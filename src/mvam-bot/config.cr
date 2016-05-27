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
  end
end
