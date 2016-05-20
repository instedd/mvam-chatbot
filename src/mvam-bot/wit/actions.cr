require "wit"

module MvamBot

  class WitActions

    getter user
    getter logger
    getter requestor

    include Wit::Actions

    def initialize(@user : User, @requestor : MessageHandler, @logger : Logger)
    end

    def say(session_id : String, context : Wit::State, message : String)
      logger.debug("Wit say: message=#{message} context=#{context.inspect}")
      requestor.answer message, update_user: false
    end

    def merge(session_id : String, context : Wit::State, entities : Hash(String, Array(JSON::Any)), msg : String?) : Wit::State
      logger.debug("Wit merge: entities=#{entities.inspect} context=#{context.inspect}")
      entities.each do |key, values|
        if values.size > 0
          if value = values[0]["value"]?
            # TODO: Handle non-string values?
            context[key] = value.as_s
          end
        end
      end
      context
    end

    def error(session_id : String, context : Wit::State, error : Wit::WitException) : Wit::State
      logger.error("Error in wit.ai conversation: #{error.to_s}")
      return context
    end

    def custom(action_name : String, session_id : String, context : Wit::State) : Wit::State
      # TODO: Execute custom action
      logger.debug("With custom action: action=#{action_name} context=#{context.inspect}")
      context
    end

  end

end
