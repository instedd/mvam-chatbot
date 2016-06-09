require "file"

module MvamBot

  module Surveys

    class Survey

      include ::MvamBot::WitUtils

      @@flow = Flow.from_yaml({{ `cat data/survey.yml`.stringify }})

      getter user
      getter requestor
      getter state_id
      @wit_response : Wit::MessageResponse?

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
          # Do nothing, and stay on the current state
        else
          run flow.states[state]
        end
      end

      private def run(to_state : FlowState)
        if say = to_state.say
          if options = to_state.options
            requestor.answer_with_keyboard(say, options, update_user: false)
          else
            requestor.answer(say, update_user: false)
          end
        end

        # Save survey data
        SurveyResponse.save_response(user_id: user.id, data: survey_data, session_id: user.ensure_session_id, completed: to_state.final)

        if to_state.final
          user.conversation_step = nil
          user.conversation_session_id = nil
          user.conversation_state.clear
          MvamBot.logger.info("Survey completed at state #{to_state.id} for user #{user.id}")
        else
          # Store current state and previous not-transient state
          previous_id = (state_id && state.transient) ? @previous_state_id : state_id
          query = previous_id ? "?from=#{previous_id}" : ""
          user.conversation_step = "survey/#{to_state.id}#{query}"
        end

        user.update
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
          test_message_transition(transition, message)
        when :intent
          test_intent_transition(transition, message)
        when :entity
          test_entity_transition(transition, message)
        when :photo
          test_photo_transition(transition, message)
        when :default
          true
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

    end

  end

end
