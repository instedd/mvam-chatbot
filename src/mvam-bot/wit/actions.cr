require "wit"
require "./utils"

module MvamBot

  class WitActions

    getter user
    getter logger
    getter requestor

    include Wit::Actions
    include MvamBot::WitUtils

    CONFIDENCE_THRESHOLD = 0.01

    def initialize(@user : User, @requestor : MessageHandler, @logger : Logger)
    end

    def say(session_id : String, context : Wit::State, message : String, confidence : Float64)
      return requestor.handle_not_understood if confidence < CONFIDENCE_THRESHOLD
      user.conversation_step = nil
      context.clear
      requestor.answer message, update_user: false
    end

    def merge(session_id : String, context : Wit::State, entities : Hash(String, Array(JSON::Any)), msg : String?, confidence : Float64) : Wit::State
      # Get the intent
      intent = extract_value_into(entities, "intent", context)

      # Set key states
      set_context_key(context, STATE_QUERY_PRICE, context.has_key?(STATE_QUERY_PRICE) || intent == INTENT_QUERY_PRICE)
      set_context_key(context, STATE_SHOW_HELP, context.has_key?(STATE_SHOW_HELP) || intent == INTENT_ASK_CAPABILITIES)

      # Extract known entities
      extract_value_into(entities, "commodity", context)
      extract_value_into(entities, "yes_no", context)

      # Extract intent-specific entities
      extract_value_into(entities, "wit/datetime", context, context_key: "survey_at") if intent == INTENT_SCHEDULE

      context
    end

    def error(session_id : String, context : Wit::State, error : Wit::WitException, confidence : Float64) : Wit::State
      logger.error("Error in wit.ai conversation: #{error.to_s}")
      return context
    end

    def custom(action_name : String, session_id : String, context : Wit::State, confidence : Float64) : Wit::State
      if confidence < CONFIDENCE_THRESHOLD
        requestor.handle_not_understood
        return context
      end

      case action_name
      when "show-price"
        if context.has_key?("commodity") && !context["commodity"].to_s.strip.empty?
          requestor.handle_price(context["commodity"].to_s)
          context.delete("commodity")
        elsif context.has_key?("yes_no") || context["intent"]? == "Thanks"
          context.clear
        else
          requestor.answer("Sorry, I did not get what price you are looking for.")
        end
      when "not-understood"
        requestor.handle_not_understood
      when "show-help"
        requestor.handle_help
        context.clear
      when "start"
        MvamBot::Surveys::Survey.new(user, requestor).start
        context.clear
      else
        logger.warn("Unknown custom action: #{action_name}")
      end

      context
    end

    def stop(session_id : String, context : Wit::State, confidence : Float64) : Wit::State
      context
    end

  end

end
