module MvamBot
  module WitUtils

    # Intents
    INTENT_QUERY_PRICE = "QueryPrice"
    INTENT_SCHEDULE = "Schedule"
    INTENT_SALUTATION = "Salutation"
    INTENT_ASK_CAPABILITIES = "AskCapabilities"
    INTENT_ASK_WHO = "AskWho"
    INTENT_ASK_WHY = "AskWhy"
    INTENT_THANKS = "Thanks"

    def extract_value(entities, key)
      if entities[key]? && entities[key].size > 0 && entities[key][0]["value"]?
        entities[key][0]["value"].raw.as(String | Int64 | Bool | Float64)
      end
    end

    def extract_value_into(entities, key, context, context_key=nil)
      context_key ||= key
      if value = extract_value(entities, key)
        context[context_key] = value
      end
      value
    end

    def set_context_key(context, key, set = true)
      if set
        context[key] = true
      else
        context.delete(key)
      end
    end

  end
end
