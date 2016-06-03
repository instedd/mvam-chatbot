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
      user.conversation_step = nil
      requestor.answer message, update_user: false
    end

    def merge(session_id : String, context : Wit::State, entities : Hash(String, Array(JSON::Any)), msg : String?) : Wit::State
      # Set intent
      extract_value_into(entities, "intent", context)

      # On queryPrice, set commodity
      case context["intent"]?
      when QUERY_PRICE
        extract_value_into(entities, "commodity", context)
      else
        context.delete("commodity")
      end

      context
    end

    private def extract_value_into(entities, key, context, context_key=nil)
      context_key ||= key
      if value = extract_value(entities, key)
        context[context_key] = value
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
      case action_name
      when "show-price"
        requestor.handle_price(context["commodity"].try(&.to_s) || "")
      when "not-understood"
        requestor.handle_not_understood
      else
        logger.warn("Unknown custom action: #{action_name}")
      end
      context
    end

  end

end
