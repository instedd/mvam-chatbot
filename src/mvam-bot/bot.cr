require "TelegramBot"
require "./models/*"

module MvamBot
  class Bot < TelegramBot::Bot
    include TelegramBot::CmdHandler

    def initialize(token)
      super("mvamBot", token)
    end

    def handle(message : TelegramBot::Message) : Bool
      puts "Message: #{message.to_json}"

      user = load_user(message)
      return true if !user

      MessageHandler.new(message, user, self).handle
      return true
    end

    def handle(query : TelegramBot::InlineQuery)
      puts "Inline query: #{query.inspect}"

      user = load_user(query)

      results = Array(TelegramBot::InlineQueryResult).new
      potato = TelegramBot::InlineQueryResultArticle.new("food:potato", "Potato", TelegramBot::InputTextMessageContent.new("Potato in Argentina is 20 ARS per kg"), description: "20 ARS per kg")
      results << potato
      results << TelegramBot::InlineQueryResultArticle.new("food:rice", "Rice", TelegramBot::InputTextMessageContent.new("10 ARS per kg"))
      results << TelegramBot::InlineQueryResultArticle.new("food:banana", "Banana", TelegramBot::InputTextMessageContent.new("30 ARS per kg"))

      answer_inline_query(query.id, results, switch_pm_text: "Choose your location", switch_pm_parameter: "location")
    end

    private def load_user(msg)
      if user = msg.from
        User.find(user.id) || User.create(user.id, user.username, [user.first_name, user.last_name].compact.join(" "))
      end
    end

  end
end
