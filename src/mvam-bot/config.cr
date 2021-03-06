module MvamBot
  module Config

    def self.pg_url : String
      ENV["PG_URL"]
    end

    def self.log_level : String
      ENV["LOG_LEVEL"]? || "DEBUG"
    end

    def self.telegram_token : String
      ENV["TELEGRAM_TOKEN"]
    end

    def self.telegram_bot_name : String
      ENV["TELEGRAM_BOT_NAME"]? || "wfpBot"
    end

    def self.telegram_certificate : String | Nil
      if cert = ENV["TELEGRAM_CERTIFICATE"]?
        cert.gsub("\\n", "\n")
      end
    end

    def self.telegram_certificate_path : String | Nil
      ENV["TELEGRAM_CERTIFICATE_PATH"]?
    end

    def self.telegram_key_path : String | Nil
      ENV["TELEGRAM_KEY_PATH"]?
    end

    def self.telegram_bind_address : String
      ENV["TELEGRAM_BIND_ADDRESS"]
    end

    def self.telegram_bind_port : Int32
      ENV["TELEGRAM_BIND_PORT"].to_i
    end

    def self.telegram_webhook_url : String | Nil
      ENV["TELEGRAM_WEBHOOK_URL"]?
    end

    def self.wit_access_token : String | Nil
      ENV["WIT_ACCESS_TOKEN"]?
    end

    def self.mapquest_token : String | Nil
      ENV["MAPQUEST_ACCESS_TOKEN"]?
    end

    def self.mapzen_token : String | Nil
      ENV["MAPZEN_ACCESS_TOKEN"]?
    end

    def self.web_username : String
      ENV["WEB_USERNAME"]
    end

    def self.web_password : String
      ENV["WEB_PASSWORD"]
    end

    def self.web_bind_address : String
      ENV["WEB_BIND_ADDRESS"]? || "0.0.0.0"
    end

    def self.web_bind_port : Int32
      ENV["WEB_BIND_PORT"]?.try(&.to_i) || 3000
    end

    def self.web_url : String
      ENV["WEB_URL"]? || "http://mvam-bot.instedd.org/"
    end
  end
end
