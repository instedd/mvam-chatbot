module MvamBot
  module Config
    def self.telegram_token : String
      ENV["TELEGRAM_TOKEN"] || raise "Telegram token not set"
    end
  end
end
