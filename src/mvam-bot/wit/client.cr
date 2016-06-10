require "wit"

module MvamBot

  class WitClient

    getter user

    def initialize(token : String, @user : User, @requestor : MessageHandler)
      logger = MvamBot.logger
      @app = Wit::App.new token, WitActions.new(@user, @requestor, logger), logger
    end

    def converse(message : String)
      session = user.ensure_session_id
      user.conversation_state = run_actions(message, session)
      user.conversation_at = Time.utc_now
      user.update
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

    protected def run_actions(message : String, session : String)
      @app.run_actions(session, message, context: user.conversation_state, max_steps: 10)
    end

  end

end
