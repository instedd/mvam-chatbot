require "TelegramBot"
require "logger"
require "benchmark"

module MvamBot
  class Bot < TelegramBot::Bot
    include TelegramBot::CmdHandler

    def initialize(token)
      super("mvamBot", token, updates_timeout: 20)
    end

    protected def logger : Logger
      MvamBot.logger
    end

    def handle(message : TelegramBot::Message) : Bool
      handle_with(message, MessageHandler)
    end

    def handle(query : TelegramBot::InlineQuery)
      handle_with(query, InlineQueryHandler)
    end

    private def handle_with(obj, klazz)
      begin
        time = Benchmark.measure do
          MvamBot.logger.info "> #{obj.class.name} #{obj.to_json}"
          if user = load_user(obj)
            klazz.new(obj, user, self).handle
          end
        end
        logger.debug("Handled #{obj.class.name} in: #{time}")
        return true
      rescue e
        logger.error e.inspect_with_backtrace
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
