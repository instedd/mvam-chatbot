require "http"
require "file"

module MvamBot

  module Surveys

    class Survey

      include ::MvamBot::WitUtils

      @@flow = Flow.from_yaml({{ `cat data/survey.yml`.stringify }})

      getter messenger
      getter! geocoder
      getter! wit_client

      MAX_RETRIES = 1

      getter user : MvamBot::User
      getter message : TelegramBot::Message?
      getter state_id : String?
      getter previous_state_id : String?

      # Caches should be cleared after each transition.
      @wit_response : Wit::MessageResponse?
      @reverse_geocoding_result : Geocoding::ReverseGeocodingResult
      @geocoding_result : Hash(String, {Float64, Float64})?
      @user_country : MvamBot::Country?
      @reference_price : MvamBot::Price?

      # Conversation state info
      @state_id : String?
      @previous_state_id : String?
      @retries : Int32
      @message : TelegramBot::Message?

      @@user_timeouts : Hash(Int32, Timeout) = Hash(Int32, Timeout).new

      def initialize(@messenger : MvamBot::UserMessenger, @wit_client : MvamBot::WitClient? = nil, @geocoder : MvamBot::Geocoding::Geocoder? = nil)
        @user = @messenger.user
        @retries = 0
        if user.conversation_step =~ /^survey\/([^\/?]+)(?:\?(.+))?/
          @state_id = $~[1]
          if query = $~[2]?
            params = HTTP::Params.parse(query)
            @previous_state_id = params["from"]?
            @retries = (params["retries"]?.try(&.to_i32) || 0)
          end
        end
      end

      def self.handles?(user, message)
        return user.conversation_step =~ /^survey/
      end

      def self.flow
        @@flow
      end

      def start
        clear_states
        clear_user_timeout
        run(flow.start, extra_text: "Hello! I'm a WFP bot assistant. ")
      end

      def handle(message, wit_response : Wit::MessageResponse? = nil)
        @message = message
        @wit_response = wit_response if wit_response
        advance
      end

      private def advance
        clear_user_timeout
        if transition = select_transition(message)
          @retries = 0
          run transition: transition
        elsif @retries < MAX_RETRIES && current_state.clarification
          @retries += 1
          run to_state: current_state, with_clarification: true
        elsif transition = current_state.transitions.find{ |t| t.kind == :failure }
          @retries = 0
          run transition: transition
        else
          MvamBot.logger.warn("No transition matched #{message} at state #{state_id} for user #{user.id}") unless current_state.final
        end
      end

      private def flow
        @@flow
      end

      protected def current_state
        flow.states[state_id]
      end

      protected def wit_understand(message)
        @wit_response ||= wit_client.understand(message)
      end

      private def run(transition : FlowTransition)
        if say = transition.say
          messenger.answer(say, update_user: false)
        end
        run transition.target
      end

      def run(state : String)
        if state == "back"
          if @previous_state_id
            run flow.states[@previous_state_id]
          else
            MvamBot.logger.error("Cannot transition to unset previous state from #{state_id} for user #{user.id}")
          end
        elsif state == "none"
          set_user_timeout flow.states[state_id]?
        else
          run flow.states[state]
        end
      end

      private def run(to_state : FlowState, extra_text : String = "", with_clarification = false)
        if to_state.dummy
          @previous_state_id = state_id
          @state_id = to_state.id
          clear_caches
          return advance
        end

        # Clear scheduled survey
        user.survey_at = nil

        # Run actions, if any
        run_actions(state: to_state)

        # Talk to the user with the default text or the clarification
        talk_to_user(state: to_state, extra_text: extra_text, with_clarification: with_clarification)

        # Save survey data
        SurveyResponse.save_response(user_id: user.id, data: survey_data, session_id: user.ensure_session_id, completed: to_state.final) unless survey_data.empty?

        if to_state.final
          user.conversation_step = nil
          user.conversation_session_id = nil
          user.conversation_state.clear
          MvamBot.logger.info("Survey completed at state #{to_state.id} for user #{user.id}")
        else
          # Store current state, previous not-transient state and retries
          query = HTTP::Params.build do |params|
            previous_id = (state_id && current_state.transient) ? @previous_state_id : state_id
            params.add("from", previous_id) if previous_id
            params.add("retries", @retries.to_s) if @retries > 0
          end

          set_user_timeout(to_state)
          user.conversation_step = "survey/#{to_state.id}?#{query}"
        end

        user.update
      end

      private def run_actions(state : FlowState)
        if state.method
          case state.method
          when "set_survey_at" then set_survey_at
          else MvamBot.logger.error("Unknown action for state: #{state.method}")
          end
        end
      end

      private def talk_to_user(state : FlowState, extra_text, with_clarification = false)
        return unless say = state.say

        if !with_clarification
          say = "#{say}\n\nRemember you can send `/price` anytime to ask for prices in your region." if state.final
          return talk_to_user(say, extra_text, state.options, state.options_from)
        end

        clarification = state.clarification.not_nil!
        say = clarification.say || "Sorry, I did not get that. #{state.say}"
        options = clarification.options || state.options
        options_from = clarification.options_from || state.options_from

        talk_to_user(say, "", options, options_from)
      end

      private def talk_to_user(say : String, extra_text : String?, options = nil, options_from : String? = nil)
        text = extra_text + hydrate(say)
        if options
          messenger.answer_with_keyboard(text, options, update_user: false)
        elsif options_from
          options = case options_from
                    when "geocoding_result"
                      options_from_geocoding_result
                    when "country_names"
                      options_from_country_names
                    else
                      raise "Unrecognised options #{options_from}"
                    end
          messenger.answer_with_keyboard(text, options, update_user: false)
        else
          messenger.answer(text, update_user: false)
        end
      end

      private def hydrate(template)
        template.gsub "$reverse_geocoding_result_label" { reverse_geocoding_result_label }
                .gsub "$survey_at" { survey_at_description }
                .gsub "$some_product_price_unit" { some_product_price_unit }
                .gsub "$some_product" { some_product }
                .gsub "$user_currency_label" { user_currency_label }
      end

      private def some_product
        reference_price.not_nil!.commodity_name.downcase
      end

      private def some_product_price_unit
        reference_price.not_nil!.unit_name
      end

      private def user_country
        if !@user_country
          country_name = if user.conversation_state["country_name"]?
                           reported_country_name.not_nil!
                         else
                           lat = user.conversation_state["lat"].not_nil!.as(Float64)
                           lng = user.conversation_state["lng"].not_nil!.as(Float64)
                           location = geocoder.reverse(lat, lng)
                           !location.nil? && location[:country_name]
                         end

          return nil unless country_name && Country.exists? country_name
          @user_country = Country.find_by_name(country_name)
        end
        @user_country
      end

      private def user_currency
        Currency.find_by_country(user_country)
      end

      private def user_currency_label
        pluralize(user_currency.name.downcase)
      end

      private def pluralize(s : String)
        s.downcase.ends_with?("y") ? "#{s[0..-2]}ies" : "#{s[0..-1]}s"
      end

      private def reference_price
        unless @reference_price
          lat = user.conversation_state["lat"].not_nil!.as(Float64)
          lng = user.conversation_state["lng"].not_nil!.as(Float64)

          # search for mkts with a wide radius. this is probably better
          # than just picking a random from anywhere in the world.
          nearest_mkts = Location::Mkt.around(lat, lng, kilometers: 2000, count: 1)
          @reference_price = if nearest_mkts.size > 0
                               mkt, distance = nearest_mkts[0]
                               Price.sample_in_mkt(mkt.id)
                             elsif adm0 = Location::Adm0.find_by_name(user_country.not_nil!.name)
                               Price.sample_in_adm0(adm0.id)
                             else
                               Price.sample
                             end
        end
        @reference_price
      end

      private def survey_data
        SurveyResponse::SurveyData.new.tap do |data|
          flow.data.each do |key|
            if value = user.conversation_state[key]?
              data[key] = value
            end
          end
        end
      end

      private def transitions_for(state)
        non_defaults, defaults = state.transitions.partition{|t| t.kind != :default}
        if state.final
          state.transitions
        elsif state.dummy
          non_defaults + defaults
        else
          non_defaults + flow.common_transitions + defaults
        end
      end

      # Selects the transition we should use based on the current context.
      #
      # Transitions are tested in order, each of them will examine the information
      # available and determine if it is possible to go to their target state.
      private def select_transition(message)
        transitions_for(current_state).find do |t|
          MvamBot.logger.debug("Testing transition #{t.inspect}")
          test_transition(t, message)
        end
      end

      # Returns true iff this is the transition that must be applied based on the current context.
      #
      # The first transition that matches will be executed, which means any side effects of the
      # transition (eg. storing information) can safely be performed here if returning true.
      private def test_transition(transition, message)
        case transition.kind
        when :message
          message && test_message_transition(transition, message)
        when :message_from
          message && test_message_from_transition(transition, message)
        when :intent
          message && test_intent_transition(transition, message)
        when :entity
          message && test_entity_transition(transition, message)
        when :photo
          message && test_photo_transition(transition, message)
        when :location
          message && test_location_transition(transition, message)
        when :method
          test_method_transition(transition, message)
        when :default
          test_default_transition(transition, message)
        end
      end

      private def test_message_transition(transition, message)
        transition_messages = transition.message
        text = message.text.not_nil!

        if transition_messages
          if transition_messages.map(&.downcase).includes?(text.downcase)
            MvamBot.logger.debug("Transition to #{transition.target} matched on message #{text}")
            user.conversation_state[transition.store.not_nil!] = text if transition.store
            return true
          end
        end
        return false
      end

      protected def test_message_from_transition(transition, message)
        options_key = transition.message_from
        options = case options_key
                  when "country_names"
                    MvamBot::Country.all_names
                  else
                    raise "Unknwon message options #{options_key}"
                  end
        text = message.text.not_nil!

        if options.map(&.downcase).includes?(text.downcase)
          MvamBot.logger.debug("Transition to #{transition.target} matched on message #{text}")
          user.conversation_state[transition.store.not_nil!] = text if transition.store
          return true
        end

        return false
      end

      private def test_intent_transition(transition, message)
        response = wit_understand(message.text.not_nil!)
        entities = response.entities
        if extract_value(entities, "intent") == transition.intent
          MvamBot.logger.debug("Transition to #{transition.target} matched on intent #{transition.intent}")
          user.conversation_state[transition.store.not_nil!] = transition.intent if transition.store
          return true
        end
        return false
      end

      private def test_entity_transition(transition, message)
        response = wit_understand(message.text.not_nil!)
        entities = response.entities
        if entity = transition.entity
          if value = extract_value(response.entities, entity)
            if transition.value.nil? || transition.value == value
              MvamBot.logger.debug("Transition to #{transition.target} matched on entity #{entity} with value #{value}")
              user.conversation_state[transition.store.not_nil!] = value if transition.store
              return true
            end
          end
        end
        return false
      end

      private def test_photo_transition(transition, message)
        photos = message.photo
        if (transition_photo = transition.photo) && photos && photos.size > 0
          MvamBot.logger.debug("Transition to #{transition.target} matched on photo")
          telegram_file_id = (photos.find {|p| p.width >= 800} || photos.last).file_id
          file_id = messenger.download_photo(telegram_file_id)
          user.conversation_state[transition.store.not_nil!] = "photo://#{file_id}" if transition.store
          return true
        end
        return false
      end

      private def test_location_transition(transition, message)
        if loc = message.location
          set_user_position(loc.latitude, loc.longitude)
          MvamBot.logger.debug("Transition to #{transition.target} matched on location")
          return true
        end
        return false
      end

      private def test_method_transition(transition, message)
        match = case transition.method
                when "use_previous_recent_user_position"
                  use_previous_recent_user_position
                when "reverse_geocode_user_position"
                  reverse_geocode_user_position
                when "user_location_is_old"
                  user_location_is_old
                when "use_previous_user_position"
                  use_previous_user_position
                when "store_known_user_country"
                  store_known_user_country
                when "geocode_ok"
                  geocode_ok
                when "geocode_multiple_results"
                  geocode_multiple_results
                when "store_chosen_location_coordinates"
                  store_chosen_location_coordinates(message)
                when "store_price_answer"
                  store_price_answer(message)
                when "can_ask_local_price"
                  can_ask_local_price
                else
                  raise "unknown transition method: #{transition.method}"
                end

        MvamBot.logger.debug("Transition to #{transition.target} matched on method #{transition.method}") if match
        match
      end

      private def store_chosen_location_coordinates(message)
        if message && message.text
          selection = geocoding_result(reported_location_name)[message.text.not_nil!]?
          if selection
            lat, lng = selection
            set_user_position(lat, lng)
            return true
          end
        end
        return false
      end

      private def can_ask_local_price
        has_position = user.conversation_state["lat"]? && user.conversation_state["lng"]?
        if has_position && !user_country.nil?
          user.conversation_state["asked_price_currency_code"] = user_currency.code
          user.conversation_state["asked_price_commodity_id"] = reference_price.not_nil!.commodity_id.to_i64
          return true
        else
          return false
        end
      end

      private def store_price_answer(message)
        return false
      end

      private def test_default_transition(transition, message)
        if message && message.text && transition.store
          user.conversation_state[transition.store.not_nil!] = message.text
        end
        MvamBot.logger.debug("Default transition will be used")
        return true
      end

      private def use_previous_recent_user_position
        use_previous_user_position(only_recent: true)
      end

      private def use_previous_user_position(only_recent = false)
        if user.location_lat && user.location_lng
          unless only_recent && user_location_is_old
            user.conversation_state["lat"] = user.location_lat
            user.conversation_state["lng"] = user.location_lng
            return true
          end
        end
        return false
      end

      private def store_known_user_country
        if user.location_adm0_id
          adm0 = Location::Adm0.find(user.location_adm0_id.not_nil!)
          user.conversation_state["country_name"] = adm0.name
          return true
        end
        return false
      end

      private def user_location_is_old
        user.gps_timestamp && !user.position_set_recently?(1.day)
      end

      private def reverse_geocode_user_position
        return false unless user.location_lat && user.location_lng

        @reverse_geocoding_result = geocoder.reverse(user.location_lat, user.location_lng)
        if @reverse_geocoding_result
          return true
        else
          MvamBot.logger.debug("Reverse geocoding returned no results for (#{user.location_lat}, #{user.location_lng})")
          return false
        end
      end

      private def reverse_geocoding_result_label
        @reverse_geocoding_result.not_nil![:label]
      end

      private def reported_country_name
        user.conversation_state["country_name"].as(String)
      end

      private def reported_location_name
        user.conversation_state["location_name"].as(String)
      end

      private def geocode_ok
        matches = geocoding_result(reported_location_name)
        if matches.size == 1
          lat, lng = matches.first[1]
          set_user_position(lat, lng)
          return true
        else
          return false
        end
      end

      private def geocode_multiple_results
        return geocoding_result(reported_location_name).size > 1
      end

      private def geocoding_result(query)
        @geocoding_result ||= geocoder.lookup(query, reported_country_name)
      end

      private def options_from_geocoding_result
        @geocoding_result.not_nil!.keys + ["None of the above"]
      end

      private def options_from_country_names
        MvamBot::Country.all_names
      end

      private def set_survey_at
        user.survey_at = Time.utc_now + case user.conversation_state["survey_at"]?.try(&.to_s.downcase)
        when "in two hours" then 2.hours
        when "in six hours" then 6.hours
        when "tomorrow" then 24.hours
        else raise "Unexpected value for survey reschedule for user #{user.id}: #{ user.conversation_state["survey_at"]? }"
        end
      end

      private def survey_at_description
        user.conversation_state["survey_at"].to_s.downcase
      end

      private def clear_states
        @state_id = nil
        @previous_state_id = nil
      end

      private def clear_caches
        @wit_response = nil
        @geocoding_result = nil
      end

      private def set_user_position(lat, lng)
        user.conversation_state["lat"] = lat
        user.conversation_state["lng"] = lng

        user.location_lat = lat
        user.location_lng = lng

        # store administrative location so we don't need to ask again in price queries
        if !user.location_adm0_id
          matching_mkts = Location::Mkt.around(lat, lng, kilometers: Topics::Geolocation::GPS_MATCH_RADIUS, count: 1)
          if !matching_mkts.empty?
            mkt, distance = matching_mkts[0]
            user.location_adm0_id = mkt.adm0_id
            user.location_adm1_id = mkt.adm1_id
            user.location_mkt_id = mkt.id
          end
        end
      end

      # Exposed for testing purposes exclusively
      def self.user_timeouts
        @@user_timeouts
      end

      private def clear_user_timeout
        if ping = @@user_timeouts.delete(user.id)
          ping.cancel
        end
      end

      private def set_user_timeout(state)
        clear_user_timeout
        return if state.nil?
        if transition = transitions_for(state).find {|t| t.kind == :timeout}
          if transition.timeout.not_nil! > 0 && transition.target != "none"
            @@user_timeouts[user.id] = Timeout.new(messenger, transition.target).schedule(transition.timeout.not_nil!)
          end
        end
      end

    end

  end

end
