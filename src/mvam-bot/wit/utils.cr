module MvamBot
  module WitUtils

    def extract_value(entities, key)
      if entities[key]? && entities[key].size > 0 && entities[key][0]["value"]?
        entities[key][0]["value"].raw.as(String | Int64 | Bool)
      end
    end

    def extract_value_into(entities, key, context, context_key=nil)
      context_key ||= key
      if value = extract_value(entities, key)
        context[context_key] = value
      end
      context
    end

  end
end
