require "wit"
require "./utils"

module MvamBot

  class WitActions

    getter user
    getter logger
    getter requestor

    include Wit::Actions
    include MvamBot::WitUtils

    def initialize(@user : User, @requestor : MessageHandler, @logger : Logger)
    end

    def say(session_id : String, context : Wit::State, message : String, confidence : Float64)
      user.conversation_step = nil
      context.clear
      requestor.answer message, update_user: false
    end

    def merge(session_id : String, context : Wit::State, entities : Hash(String, Array(JSON::Any)), msg : String?, confidence : Float64) : Wit::State
      # Get the intent
      intent = extract_value_into(entities, "intent", context)

      # Set key states
      set_context_key(context, STATE_QUERY_PRICE, context.has_key?(STATE_QUERY_PRICE) || intent == INTENT_QUERY_PRICE)

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
      case action_name
      when "show-price"
        requestor.handle_price(context["commodity"].try(&.to_s) || "")
      when "not-understood"
        requestor.handle_not_understood
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
