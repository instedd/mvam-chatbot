require "wit"

module MvamBot

  class WitClient

    getter user

    def initialize(token : String, @user : User, @requestor : MessageHandler)
      logger = @requestor.bot.logger
      @app = Wit::App.new token, WitActions.new(@user, @requestor, logger), logger
    end

    def converse(message : String)
      # TODO: Load user conversation_state
      user.conversation_state = @app.run_actions user.ensure_session_id, message, context: user.conversation_state, max_steps: 10
      user.conversation_at = Time.utc_now
      user.update
    end

  end

end
