require "wit"

module MvamBot

  class WitActions

    getter user
    getter logger
    getter requestor

    include Wit::Actions

    QUERY_PRICE = "QueryPrice"
    WHO_IS = "Whois"

    def initialize(@user : User, @requestor : MessageHandler, @logger : Logger)
    end

    def say(session_id : String, context : Wit::State, message : String)
      requestor.answer message, update_user: false
    end

    def merge(session_id : String, context : Wit::State, entities : Hash(String, Array(JSON::Any)), msg : String?) : Wit::State
      # Set intent
      context["intent"] = extract_value(entities, "intent")

      # On queryPrice, set commodity
      case context["intent"]
      when WHO_IS
        context["commodity"] = nil
      when QUERY_PRICE
        context["commodity"] = extract_value(entities, "commodity")
      end

      context
    end

    private def extract_value(entities, key)
      if entities[key]? && entities[key].size > 0 && entities[key][0]["value"]?
        entities[key][0]["value"].as_s
      end
    end

    def error(session_id : String, context : Wit::State, error : Wit::WitException) : Wit::State
      logger.error("Error in wit.ai conversation: #{error.to_s}")
      return context
    end

    def custom(action_name : String, session_id : String, context : Wit::State) : Wit::State
      # TODO: Execute custom action
      context
    end

  end

end
