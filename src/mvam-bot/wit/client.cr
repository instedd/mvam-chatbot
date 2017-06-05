require "wit"

module MvamBot
  module WitClient
    def self.for(user : User, token = nil)
      if token || MvamBot::Config.wit_access_token
        Client.new(user, token)
      else
        NilClient.new
      end
    end

    abstract def understand(message : String)
    abstract def speech(data, content_type)

    class Client
      include MvamBot::WitClient

      getter user

      def initialize(@user : User, token = nil)
        @app = Wit::App.new token || MvamBot::Config.wit_access_token.not_nil!, logger: MvamBot.logger
      end

      def understand(message : String)
        session = user.ensure_session_id
        get_message(message, session)
      end

      def speech(data, content_type)
        session = user.ensure_session_id
        get_message(data, session, content_type)
      end

      protected def get_message(data : Slice(UInt8), session : String, content_type : String)
        @app.speech(data, content_type: content_type, thread_id: session)
      end

      protected def get_message(message : String, session : String)
        @app.message(message, thread_id: session)
      end
    end

    class NilClient
      include MvamBot::WitClient

      def understand(message : String)
        nil
      end

      def speech(data, content_type)
        nil
      end
    end
  end
end
