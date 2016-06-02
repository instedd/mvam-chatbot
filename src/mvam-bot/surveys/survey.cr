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
        response = wit_understand(message.text.not_nil!)

        if transition = state.transitions.find { |t| transition_applies?(t, response.entities) }
          run(flow.states[transition.target])
        elsif !state.final
          MvamBot.logger.warn("No transition matched #{message} with #{response.inspect} at state #{state_id} for user #{user.id}")
        else
          MvamBot.logger.info("Survey completed at state #{state.id} for user #{user.id}")
        end
      end

      def flow
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
          requestor.answer(say, update_user: false)
        end
        user.conversation_step = "survey/#{state.id}"
        user.update
      end

      private def transition_applies?(transition, entities)
        if transition.intent
          if extract_value(entities, "intent") == transition.intent
            MvamBot.logger.debug("Transition to #{transition.target} matched on intent #{transition.intent}")
            return true
          end
        elsif transition.entity
          if value = extract_value(entities, transition.entity_name.not_nil!)
            MvamBot.logger.debug("Transition to #{transition.target} matched on entity #{transition.entity_name} with value #{value}")
            user.conversation_state[transition.context_target.not_nil!] = value
            return true
          end
        elsif transition.after
          # TODO: Support transitioning after a delay
        elsif transition.action
          # TODO: Support transitioning upon an action
        else
          MvamBot.logger.debug("Transition to #{transition.target} matched as default")
          true
        end
      end

    end

  end

end
