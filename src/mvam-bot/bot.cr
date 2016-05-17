require "TelegramBot"
require "logger"
require "benchmark"
require "openssl"
require "http/server"

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

    def handle(callback : TelegramBot::CallbackQuery)
      handle_with(callback, CallbackQueryHandler)
    end

    def run
      if url = MvamBot::Config.telegram_webhook_url
        set_webhook(url, certificate)
        serve(MvamBot::Config.telegram_bind_address, MvamBot::Config.telegram_bind_port, MvamBot::Config.telegram_certificate_path, MvamBot::Config.telegram_key_path)
      else
        set_webhook("")
        polling
      end
    end

    private def certificate
      if cert_path = MvamBot::Config.telegram_certificate_path
        File.read(cert_path).to_s
      else
        MvamBot::Config.telegram_certificate
      end
    end

    private def handle_with(obj, klazz)
      begin
        time = Time.utc_now
        MvamBot.logger.info "> #{obj.class.name} #{obj.to_json}"
        if user = load_user(obj)
          klazz.new(obj, user, self).handle
        end
        logger.debug("Handled #{obj.class.name} in #{Time.utc_now - time}")
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
