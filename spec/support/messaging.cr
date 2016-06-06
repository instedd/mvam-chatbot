module MvamBot::Spec

  class WitClient < ::MvamBot::WitClient
    @runner : Proc(String, String, Wit::Actions, Wit::State)?

    def initialize(user, requestor, messages : Hash(String, Wit::MessageResponse)? = nil)
      super("", user, requestor)
      @messages = messages || Hash(String, Wit::MessageResponse).new
    end

    def initialize(user, requestor, messages : Hash(String, Wit::MessageResponse)? = nil, &runner : (String, String, Wit::Actions -> Wit::State))
      super("", user, requestor)
      @messages = messages || Hash(String, Wit::MessageResponse).new
      @runner = runner
    end

    protected def run_actions(message : String, session : String)
      actions = @app.actions
      @runner.not_nil!.call(message, session, actions)
    end

    protected def get_message(message : String, session : String)
      @messages.not_nil![message]
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

  def message_handler(msg, user = nil, bot = nil, location = nil)
    bot ||= Bot.new
    message = Telegram.message(msg, location: location)
    user = user || Factory::DB.user
    MessageHandler.new(message, user, bot)
  end

  def handle_message(msg, user = nil, bot = nil, messages = nil, location : {Float64, Float64}? = nil)
    handler = message_handler(msg, user, bot, location)
    handler.wit_client = WitClient.new(handler.user, handler, messages)
    handler.handle
    handler.bot.as(Bot).messages
  end

  def handle_message(msg, user = nil, bot = nil, messages = nil, &wit : (String, String, Wit::Actions -> Wit::State))
    handler = message_handler(msg, user, bot)
    handler.wit_client = WitClient.new(handler.user, handler, messages, &wit)
    handler.handle
    handler.bot.as(Bot).messages
  end

  def reply_buttons(msg)
    msg[:reply_markup].as(TelegramBot::ReplyKeyboardMarkup).keyboard.flatten.map(&.text)
  end

end
