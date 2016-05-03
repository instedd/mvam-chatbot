require "TelegramBot"

module MvamBot
  class Bot < TelegramBot::Bot
    include TelegramBot::CmdHandler

    def initialize(token)
      super("mvamBot", token)
    end

    def handle(message : TelegramBot::Message) : Bool
      p "Message: #{message.inspect}"
      if message.text == "/start location"
          # Handle location set
          send_message message.chat.id, "What is your location?"
      end
      return true
    end

    def handle(query : TelegramBot::InlineQuery)
      p "Inline query: #{query.inspect}"
      results = Array(TelegramBot::InlineQueryResult).new
      potato = TelegramBot::InlineQueryResultArticle.new("food:potato", "Potato", TelegramBot::InputTextMessageContent.new("Potato in Argentina is 20 ARS per kg"))
      potato.description = "20 ARS per kg"
      results << potato
      results << TelegramBot::InlineQueryResultArticle.new("food:rice", "Rice", TelegramBot::InputTextMessageContent.new("10 ARS per kg"))
      results << TelegramBot::InlineQueryResultArticle.new("food:banana", "Banana", TelegramBot::InputTextMessageContent.new("30 ARS per kg"))

      answer_inline_query(query.id, results, switch_pm_text: "Choose your location", switch_pm_parameter: "location")
    end


  end
end
