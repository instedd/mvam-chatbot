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
      requestor.answer message, update_user: false
    end

    def merge(session_id : String, context : Wit::State, entities : Hash(String, Array(JSON::Any)), msg : String?, confidence : Float64) : Wit::State
      # Set intent
      extract_value_into(entities, "intent", context)

      # On queryPrice, set commodity
      case context["intent"]?
      when QUERY_PRICE
        extract_value_into(entities, "commodity", context)
      when SCHEDULE
        extract_value_into(entities, "wit/datetime", context, context_key: "survey_at")
      else
        context.delete("commodity")
      end

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
      when "start-survey"
        MvamBot::Surveys::Survey.new(user, requestor).start
      when "reschedule-survey"
        MvamBot::Surveys::Survey.new(user, requestor).reschedule(context["survey_at"].to_s)
      when "no-survey"
        MvamBot::Surveys::Survey.new(user, requestor).cancel
      else
        logger.warn("Unknown custom action: #{action_name}")
      end
      context
    end

  end

end
