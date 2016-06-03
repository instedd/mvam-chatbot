require "file"

module MvamBot

  module Surveys

    class Survey

      include ::MvamBot::WitUtils

      @@flow = Flow.from_yaml({{ `cat data/survey.yml`.stringify }})

      getter user
      getter requestor
      getter state_id

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
        # If the message has a photo, check for transitions on photos
        if photos = message.photo
          if transition = state.transitions.find { |t| transition_applies?(t, photos: photos) }
            run transition.target
            return
          end
        end

        # Try to handle the message directly without falling back to wit using match on message
        if text = message.text
          if transition = state.transitions.find { |t| transition_applies?(t, message: message.text.not_nil!) }
            run transition.target
            return
          end
        end

        # If there is not a transition by exact message, then ask wit for entities
        response = wit_understand(message.text.not_nil!)
        if transition = state.transitions.find { |t| transition_applies?(t, entities: response.entities) }
          run transition.target
          return
        end

        MvamBot.logger.warn("No transition matched #{message} with #{response.inspect} at state #{state_id} for user #{user.id}") unless state.final
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

      private def survey_data
        SurveyResponse::SurveyData.new.tap do |data|
          flow.data.each do |key|
            if value = user.conversation_state[key]?
              data[key] = value
            end
          end
        end
      end

      private def transition_applies?(transition, *, photos)
        return nil if photos.size == 0
        if transition_photo = transition.photo
          MvamBot.logger.debug("Transition to #{transition.target} matched on photo")
          telegram_file_id = (photos.find {|p| p.width >= 800} || photos.last).file_id
          file_id = requestor.download_photo(telegram_file_id, user_id: user.id)
          user.conversation_state[transition.store.not_nil!] = "photo://#{file_id}" if transition.store
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
