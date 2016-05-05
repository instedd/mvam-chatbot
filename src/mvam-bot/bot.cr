require "TelegramBot"

module MvamBot
  class Bot < TelegramBot::Bot
    include TelegramBot::CmdHandler

    def initialize(token)
      super("mvamBot", token)
    end

    def handle(message : TelegramBot::Message) : Bool
      begin
        puts "> #{message.to_json}"
        user = load_user(message) || return true
        MessageHandler.new(message, user, self).handle
        return true
      rescue e
        puts e.inspect_with_backtrace
        return false
      end
    end

    def handle(query : TelegramBot::InlineQuery)
      begin
        puts "> #{query.to_json}"
        user = load_user(query) || return true
        InlineQueryHandler.new(query, user, self).handle
        return true
      rescue e
        puts e.inspect_with_backtrace
        return false
      end
    end

    private def load_user(msg)
      if user = msg.from
        User.find(user.id) || User.create(user.id, user.username, [user.first_name, user.last_name].compact.join(" "))
      end
    end

  end
end
