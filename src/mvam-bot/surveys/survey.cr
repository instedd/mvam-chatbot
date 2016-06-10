require "http"
require "file"

module MvamBot

  module Surveys

    class Survey

      include ::MvamBot::WitUtils

      @@flow = Flow.from_yaml({{ `cat data/survey.yml`.stringify }})

      getter user
      getter requestor
      getter message
      getter state_id

      MAX_RETRIES = 1
      PING_INTERVAL = 10.seconds

      # Caches should be cleared after each transition.
      @wit_response : Wit::MessageResponse?
      @reverse_geocoding_result : String?
      @geocoding_result : Hash(String, {Float64, Float64})?

      # Conversation state info
      @state_id : String?
      @previous_state_id : String?
      @retries : Int32 = 0
      @message : TelegramBot::Message?

      @@user_timeouts : Hash(Int32, MvamBot::Topics::Pinger) = Hash(Int32, MvamBot::Topics::Pinger).new

      def initialize(@user : MvamBot::User, @requestor : MvamBot::MessageHandler)
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
        elsif @retries < MAX_RETRIES && state.clarification
          @retries += 1
          run to_state: state, with_clarification: true
        elsif transition = state.transitions.find{ |t| t.kind == :failure }
          @retries = 0
          run transition: transition
        else
          MvamBot.logger.warn("No transition matched #{message} at state #{state_id} for user #{user.id}") unless state.final
        end
      end

      private def flow
        @@flow
      end

      protected def state
        flow.states[state_id]
      end

      protected def wit_understand(message)
        @wit_response ||= @requestor.wit_client.not_nil!.understand(message)
      end

      private def run(transition : FlowTransition)
        if say = transition.say
          @requestor.answer(say, update_user: false)
        end
        run transition.target
      end

      private def run(state : String)
        if state == "back"
          if @previous_state_id
            run flow.states[@previous_state_id]
          else
            MvamBot.logger.error("Cannot transition to unset previous state from #{state_id} for user #{user.id}")
          end
        elsif state == "none"
          set_user_timeout
        else
          run flow.states[state]
        end
      end

      private def run(to_state : FlowState, extra_text : String = "", with_clarification = false)
        if to_state.dummy
          @previous_state_id = state.id
          @state_id = to_state.id
          clear_caches
          return advance
        end

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
            previous_id = (state_id && state.transient) ? @previous_state_id : state_id
            params.add("from", previous_id) if previous_id
            params.add("retries", @retries.to_s) if @retries > 0
          end

          set_user_timeout
          user.conversation_step = "survey/#{to_state.id}?#{query}"
        end

        user.update
      end

      private def talk_to_user(state : FlowState, extra_text, with_clarification = false)
        return if state.say.nil?
        return talk_to_user(state.say.not_nil!, extra_text, state.options, state.options_from) if !with_clarification

        clarification = state.clarification.not_nil!
        say = clarification.say || "Sorry, I did not get that. #{state.say}"
        options = clarification.options || state.options
        options_from = clarification.options_from || state.options_from

        talk_to_user(say, "", options, options_from)
      end

      private def talk_to_user(say : String, extra_text : String?, options = nil, options_from : String? = nil)
        text = extra_text + hydrate(say)
        if options
          requestor.answer_with_keyboard(text, options, update_user: false)
        elsif options_from
          options = case options_from
                    when "geocoding_result"
                      options_from_geocoding_result
                    when "country_names"
                      options_from_country_names
                    else
                      raise "Unrecognised options #{options_from}"
                    end
          requestor.answer_with_keyboard(text, options, update_user: false)
        else
          requestor.answer(text, update_user: false)
        end
      end

      private def hydrate(template)
        template.gsub "$reverse_geocoding_result" { reverse_geocoding_result }
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
        state.final ? state.transitions : (non_defaults + flow.common_transitions + defaults)
      end

      # Selects the transition we should use based on the current context.
      #
      # Transitions are tested in order, each of them will examine the information
      # available and determine if it is possible to go to their target state.
      private def select_transition(message)
        transitions_for(state).find do |t|
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
          if transition_messages.includes?(text)
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

        if options.includes?(text)
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
          file_id = requestor.download_photo(telegram_file_id, user_id: user.id)
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

        @reverse_geocoding_result = @requestor.geocoder.reverse(user.location_lat, user.location_lng)
        if @reverse_geocoding_result
          return true
        else
          MvamBot.logger.debug("Reverse geocoding returned no results for (#{user.location_lat}, #{user.location_lng})")
          return false
        end
      end

      private def reverse_geocoding_result
        @reverse_geocoding_result
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
        @geocoding_result ||= @requestor.geocoder.lookup(query, reported_country_name)
      end

      private def options_from_geocoding_result
        @geocoding_result.not_nil!.keys + ["None of the above"]
      end

      private def options_from_country_names
        MvamBot::Country.all_names
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

      private def clear_user_timeout
        if ping = @@user_timeouts.delete(user.id)
          ping.cancel
        end
      end

      private def set_user_timeout
        clear_user_timeout
        if msg = message
          @@user_timeouts[user.id] = MvamBot::Topics::Pinger.new(requestor.bot, msg.chat.id).schedule(PING_INTERVAL)
        end
      end

    end

  end

end
