require "file"

module MvamBot

  module Surveys

    class Survey

      include ::MvamBot::WitUtils

      @@flow = Flow.from_yaml({{ `cat data/survey.yml`.stringify }})

      getter user
      getter requestor
      getter state_id

      def initialize(@user : MvamBot::User, @requestor : MvamBot::MessageHandler, @state_id : String? = nil)
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
        # Try to handle the message directly without falling back to wit
        if transition = state.transitions.find { |t| transition_applies?(t, message: message.text.not_nil!) }
          run(flow.states[transition.target])
          return
        end

        # If there is not a transition by exact message, then ask wit for entities
        response = wit_understand(message.text.not_nil!)
        if transition = state.transitions.find { |t| transition_applies?(t, entities: response.entities) }
          run(flow.states[transition.target])
        elsif !state.final
          MvamBot.logger.warn("No transition matched #{message} with #{response.inspect} at state #{state_id} for user #{user.id}")
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
        @requestor.wit_client.not_nil!.understand(message)
      end

      private def run(state)
        if say = state.say
          if options = state.options
            requestor.answer_with_keyboard(say, options, update_user: false)
          else
            requestor.answer(say, update_user: false)
          end
        end

        if state.final
          user.conversation_step = nil
          MvamBot.logger.info("Survey completed at state #{state.id} for user #{user.id}")
        else
          user.conversation_step = "survey/#{state.id}"
        end

        SurveyResponse.save_response(user_id: user.id, data: survey_data, session_id: user.ensure_session_id, completed: state.final)
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

      private def transition_applies?(transition, *, message)
        if transition_messages = transition.message
          if transition_messages.includes?(message)
            MvamBot.logger.debug("Transition to #{transition.target} matched on message #{message}")
            user.conversation_state[transition.store.not_nil!] = message if transition.store
            return true
          end
        end
      end

      private def transition_applies?(transition, *, entities, message = nil)
        return true if message && transition_applies?(transition, message: message)

        if transition.intent
          if extract_value(entities, "intent") == transition.intent
            MvamBot.logger.debug("Transition to #{transition.target} matched on intent #{transition.intent}")
            user.conversation_state[transition.store.not_nil!] = intent_answer_value(transition.intent) if transition.store
            return true
          end
        elsif entity = transition.entity
          if value = extract_value(entities, entity)
            MvamBot.logger.debug("Transition to #{transition.target} matched on entity #{entity} with value #{value}")
            user.conversation_state[transition.store.not_nil!] = value if transition.store
            return true
          end
        elsif transition.after
          # TODO: Support transitioning after a delay
        elsif transition.action
          # TODO: Support transitioning upon an action
        elsif transition.default
          # TODO: Add default transitions when not-understood
          MvamBot.logger.debug("Transition to #{transition.target} matched as default")
          true
        end
      end

    end

  end

end
