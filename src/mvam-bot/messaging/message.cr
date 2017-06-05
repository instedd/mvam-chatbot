require "facebook_bot"

module MvamBot
  abstract class Message
    abstract def text : String?
    abstract def photo
    abstract def voice
    abstract def location

    def self.from(msg : FacebookBot::Incoming::Message, entry : FacebookBot::Incoming::Entry)
      Message::FacebookProxy.new(msg, entry)
    end

    def self.from(msg : TelegramBot::Message)
      Message::TelegramProxy.new(msg)
    end
  end

  class Message::TelegramProxy < Message
    def initialize(@message : TelegramBot::Message)
    end

    delegate text, photo, location, voice, to: @message

    def chat_id
      @message.chat.id
    end

    def text=(txt)
      @message.text = txt
    end

    def page_id
      nil
    end
  end

  class Message::FacebookProxy < Message
    def initialize(@message : FacebookBot::Incoming::Message, @entry : FacebookBot::Incoming::Entry)
    end

    macro defnil(*names)
      {% for name in names %}
      def {{name.id}}
        nil
      end
      {% end %}
    end

    delegate text, to: @message
    defnil photo, location, voice

    def chat_id
      @message.sender.id
    end

    def text=(txt)
      @message.message.text = txt
    end

    def page_id
      @entry.id
    end
  end
end
