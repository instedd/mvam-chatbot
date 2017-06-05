require "facebook_bot"
require "logger"

module MvamBot
  class Bot::Facebook < FacebookBot::Bot
    include MvamBot::Bot

    def initialize(access_token, verify_token)
      super(access_token, verify_token, logger)
    end

    protected def logger : Logger
      MvamBot.logger
    end

    def handle_message(message : FacebookBot::Incoming::Message, entry : FacebookBot::Incoming::Entry)
      begin
        time = Time.utc_now
        MvamBot.logger.info "> #{message.class.name} #{message.to_json}"
        if user = load_user(message, entry)
          MvamBot::MessageHandler.new(message, entry, user, self).handle
        end
        logger.debug("Handled #{message.class.name} in #{Time.utc_now - time}")
        return true
      rescue e
        logger.error e.inspect_with_backtrace
        return false
      end
    end

    def handle_postback(postback : FacebookBot::Incoming::Postback, entry : FacebookBot::Incoming::Entry)
      begin
        time = Time.utc_now
        MvamBot.logger.info "> #{postback.class.name} #{postback.to_json}"
        logger.debug("Handled #{postback.class.name} in #{Time.utc_now - time}")
        return true
      rescue e
        logger.error e.inspect_with_backtrace
        return false
      end
    end

    def run
      serve(MvamBot::Config.facebook_bind_address, MvamBot::Config.facebook_bind_port, MvamBot::Config.facebook_certificate_path, MvamBot::Config.facebook_key_path)
    end

    def user_messenger(user, chat_id, token = nil)
      UserMessenger::Facebook.new(user, chat_id, self, token)
    end

    def download_file(file_id)
      nil
    end

    private def load_user(msg, entry)
      if user_id = msg.sender.id
        User.find_facebook(user_id) || create_user(user_id, entry.id)
      end
    end

    private def create_user(user_id, page_id)
      token = MvamBot::BotDefinition.resolve(page_id, nil).try(&.access_token)
      if profile = user_profile(user_id, token: token)
        name = [profile.first_name, profile.last_name].compact.join(" ")
        User.create(facebook_psid: user_id, facebook_page_id: page_id, name: name, locale: profile.locale, gender: profile.gender, timezone: profile.timezone)
      end
    end
  end
end
