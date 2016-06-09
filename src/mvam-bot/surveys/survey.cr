require "file"

module MvamBot

  module Surveys

    class Survey

      include ::MvamBot::WitUtils

      @@flow = Flow.from_yaml({{ `cat data/survey.yml`.stringify }})

      getter user
      getter requestor
      getter state_id
      
      # cache wit responses by message
      # note that with dummy states a Survey instance can span more than one state transition
      @wit_cache = {} of String => Wit::MessageResponse
      @geocoding_results = {} of String => Hash(String, {Float64, Float64})

      def initialize(@user : MvamBot::User, @requestor : MvamBot::MessageHandler, @state_id : String? = nil, @previous_state_id : String? = nil)
      end

      def start
        run(flow.start)
      end

      def reschedule(when)
        # TODO: Reschedule poll for specified datetime
        user.conversation_step = nil
      end

      def cancel
        user.conversation_step = nil
      end

      def handle(message)
        advance(message)
      end

      def advance(message = nil)
        if transition = select_transition(message)
          run transition: transition
        else
          MvamBot.logger.warn("No transition matched #{message} at state #{state_id} for user #{user.id}") unless state.final
        end
      end

      def flow
        @@flow
      end

      def self.flow
        @@flow
      end

      protected def state
        flow.states[state_id]
      end

      protected def wit_understand(message)
        @wit_cache[message] ||= @requestor.wit_client.not_nil!.understand(message)
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
          # Do nothing, and stay on the current state
        else
          run flow.states[state]
        end
      end

      private def run(to_state : FlowState)
        if to_state.dummy
          @previous_state_id = state.id
          @state_id = to_state.id
          return advance
        end

        talk_to_user(to_state)

        if to_state.final
          user.conversation_step = nil
          MvamBot.logger.info("Survey completed at state #{to_state.id} for user #{user.id}")
        else
          # Store current state and previous not-transient state
          previous_id = (state_id && state.transient) ? @previous_state_id : state_id
          query = previous_id ? "?from=#{previous_id}" : ""
          user.conversation_step = "survey/#{to_state.id}#{query}"
        end

        SurveyResponse.save_response(user_id: user.id, data: survey_data, session_id: user.ensure_session_id, completed: to_state.final)
        user.update
      end

      private def talk_to_user(to_state)
        if say = to_state.say
          if options = to_state.options
            requestor.answer(say, build_keyboard(options), update_user: false)
          elsif options_from = to_state.options_from
            options = case options_from
                      when "geocoding_result"
                        options_from_geocoding_result
                      when "country_names"
                        options_from_country_names
                      else
                        raise "Unrecognised options #{options_from}"
                      end
            requestor.answer(say, build_keyboard(options), update_user: false)
          else
            requestor.answer(say, update_user: false)
          end
        end
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

      # Selects the transition we should use based on the current context.
      #
      # Transitions are tested in order, each of them will examine the information
      # available and determine if it is possible to go to their target state.
      private def select_transition(message)
        state.transitions.find { |t| test_transition(t, message) }
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
          user.conversation_state[transition.store.not_nil!] = intent_answer_value(transition.intent) if transition.store
          return true
        end
        return false
      end

      private def test_entity_transition(transition, message)
        response = wit_understand(message.text.not_nil!)
        entities = response.entities
        if entity = transition.entity
          if value = extract_value(response.entities, entity)
            MvamBot.logger.debug("Transition to #{transition.target} matched on entity #{entity} with value #{value}")
            user.conversation_state[transition.store.not_nil!] = value if transition.store
            return true
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
          user.conversation_state["lat"] = loc.latitude
          user.conversation_state["lng"] = loc.longitude
          MvamBot.logger.debug("Transition to #{transition.target} matched on location")
          return true
        end
        return false
      end

      private def test_method_transition(transition, message)
        match = case transition.method
                when "store_user_location"
                  store_user_location
                when "geocode_ok"
                  geocode_ok
                when "geocode_multiple_results"
                  geocode_multiple_results
                when "store_chosen_location_coordinates"
                  store_chosen_location_coordinates(message)
                else
                  false
                end

        MvamBot.logger.debug("Transition to #{transition.target} matched on method #{transition.method}") if match
        match
      end

      def store_chosen_location_coordinates(message)
        if message && message.text
          selection = geocoding_result(message.text.not_nil!)[message.text.not_nil!]?
          if selection
            lat, lng = selection
            user.conversation_state["lat"] = lat
            user.conversation_state["lng"] = lng
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

      private def store_user_location
        if user.location_lat && user.location_lng
          user.conversation_state["lat"] = user.location_lat
          user.conversation_state["lng"] = user.location_lng
          return true
        else
          return false
        end
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
          user.conversation_state["lat"] = lat
          user.conversation_state["lng"] = lng
          return true
        else
          return false
        end
      end

      private def geocode_multiple_results
        return geocoding_result(reported_location_name).size > 1
      end

      private def geocoding_result(query)
        @geocoding_results[query] ||= @requestor.geocoder.lookup(query, reported_country_name)
      end

      def options_from_geocoding_result
        @geocoding_results.first[1].keys + ["None of the above"]
      end

      def options_from_country_names
        MvamBot::Country.all_names
      end

      private def build_keyboard(options : Array(String))
        buttons = options.map { |o| [TelegramBot::KeyboardButton.new(o)] }
        build_keyboard(buttons)
      end

      private def build_keyboard(options : Array(MvamBot::Surveys::Option))
        buttons = options.map { |o| [TelegramBot::KeyboardButton.new(o.text, request_location: o.request_location)] }
        build_keyboard(buttons)
      end

      private def build_keyboard(buttons : Array(TelegramBot::KeyboardButton))
        TelegramBot::ReplyKeyboardMarkup.new(buttons, one_time_keyboard: true)
      end

      private def build_keyboard(buttons)
        TelegramBot::ReplyKeyboardMarkup.new(buttons, one_time_keyboard: true)
      end

    end

  end

end
