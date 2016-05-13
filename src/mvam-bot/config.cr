module MvamBot
  module Config
    def self.telegram_token : String
      ENV["TELEGRAM_TOKEN"]
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
  end
end
