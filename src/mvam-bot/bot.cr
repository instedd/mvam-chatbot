module MvamBot
  module Bot
    abstract def run
    abstract def logger : Logger
    abstract def user_messenger(user, chat_id) : UserMessenger
    abstract def download_file(file_id)
  end
end

require "./bots/*"

module MvamBot::Bot
  def self.bot
    if MvamBot::Config.telegram?
      MvamBot::Bot::Telegram.new(MvamBot::Config.telegram_token)
    elsif MvamBot::Config.facebook?
      MvamBot::Bot::Facebook.new(MvamBot::Config.facebook_access_token, MvamBot::Config.facebook_verify_token)
    else
      raise "Must set facebook or telegram access token"
    end
  end
end
