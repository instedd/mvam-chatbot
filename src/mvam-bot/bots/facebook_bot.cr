require "facebook_bot"
require "logger"

module MvamBot
  class Bot::Facebook < FacebookBot::Bot
    include MvamBot::Bot

    def initialize
      super(MvamBot::Config.facebook_access_token, MvamBot::Config.facebook_verify_token, logger)
    end

    protected def logger : Logger
      MvamBot.logger
    end

    def handle_message(message : FacebookBot::Incoming::Message, entry : FacebookBot::Incoming::Entry)
      begin
        time = Time.utc_now
        MvamBot.logger.info "> #{message.class.name} #{message.to_json}"
        if user = load_user(message)
          MvamBot::MessageHandler.new(message, user, self).handle
        end
        logger.debug("Handled #{message.class.name} in #{Time.utc_now - time}")
        return true
      rescue e
        logger.error e.inspect_with_backtrace
        return false
      end
    end

    def run
      serve(MvamBot::Config.facebook_bind_address, MvamBot::Config.facebook_bind_port, MvamBot::Config.facebook_certificate_path, MvamBot::Config.facebook_key_path)
    end

    def user_messenger(user, chat_id)
      UserMessenger::Facebook.new(user, chat_id, self)
    end

    def download_file(file_id)
      nil
    end

    private def load_user(msg)
      if user_id = msg.sender.id
        User.find(user_id) || create_user(user_id)
      end
    end

    private def create_user(user_id)
      profile = user_profile(user_id)
      name = [user.first_name, user.last_name].compact.join(" ")
      User.create(user_id, name, name)
    end
  end
end
