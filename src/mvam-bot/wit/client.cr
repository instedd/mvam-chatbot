require "wit"

module MvamBot

  class WitClient

    getter user

    def initialize(token : String, @user : User, @requestor : MessageHandler)
      @app = Wit::App.new token, logger: MvamBot.logger
    end

    def understand(message : String)
      session = user.ensure_session_id
      get_message(message, session)
    end

    protected def get_message(message : String, session : String)
      @app.message(message, thread_id: session)
    end

  end

end
