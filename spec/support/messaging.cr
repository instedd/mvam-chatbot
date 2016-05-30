module MvamBot::Spec

  class WitClient < ::MvamBot::WitClient
    def initialize(user, requestor, &runner : (String, String, Wit::Actions -> Wit::State))
      super("", user, requestor)
      @runner = runner
    end

    protected def run_actions(message : String, session : String)
      actions = @app.actions
      @runner.call(message, session, actions)
    end
  end

  class MessageHandler < ::MvamBot::MessageHandler
    setter wit_client
    @wit_client : ::MvamBot::WitClient?

    def initialize(*args)
      super(*args)
    end

    protected def wit_client
      @wit_client || super
    end
  end

  def message_handler(msg, user = nil, bot = nil)
    bot ||= Bot.new
    message = Telegram.message(msg)
    user = user || Factory::DB.user
    MessageHandler.new(message, user, bot)
  end

  def handle_message(msg, user = nil, bot = nil)
    handler = message_handler(msg, user, bot)
    handler.handle
    handler.bot.as(Bot).messages
  end

  def handle_message_with_wit(msg, user = nil, bot = nil, &wit : (String, String, Wit::Actions -> Wit::State))
    handler = message_handler(msg, user, bot)
    handler.wit_client = WitClient.new(user, handler, &wit)
    handler.handle
    handler.bot.as(Bot).messages
  end

end
