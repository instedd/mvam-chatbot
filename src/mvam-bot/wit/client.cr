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

    protected def run_actions(message : String, session : String)
      @app.run_actions(session, message, context: user.conversation_state, max_steps: 10)
    end

  end

end
