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

  class Geocoder < ::MvamBot::Geocoder
    def initialize(@results : Hash(String, Hash(String, {Float64, Float64})))
    end

    def lookup(query)
      @results.fetch(query, {} of String => {Float64, Float64})
    end
  end

  class MessageHandler < ::MvamBot::MessageHandler
    setter wit_client
    @wit_client : ::MvamBot::WitClient?

    setter geocoder
    @geocoder : ::MvamBot::Geocoder?

    def initialize(*args)
      super(*args)
    end

    protected def wit_client
      @wit_client || super
    end

    protected def geocoder
      @geocoder || super
    end
  end

  def message_handler(msg, user = nil, bot = nil, photo = nil, location = nil)
    bot ||= Bot.new
    bot.fake(photo: photo) if photo

    message = if photo
      Telegram.photo(photo, location: location)
    elsif msg
      Telegram.message(msg, location: location)
    else
      Telegram.message("", location: location)
    end

    user = user || Factory::DB.user()
    MessageHandler.new(message, user, bot)
  end

  def handle_message(msg = nil, user = nil, bot = nil, messages = nil, geocoding = nil, photo : String? = nil, location : {Float64, Float64}? = nil)
    handler = message_handler(msg, user, bot, photo: photo, location: location)
    handler.wit_client = WitClient.new(handler.user, handler, messages)
    handler.geocoder = Geocoder.new(geocoding || {} of String => Hash(String, {Float64, Float64}))
    handler.handle
    handler.bot.as(Bot).messages
  end

  def handle_message(msg = nil, user = nil, bot = nil, messages = nil, geocoding = nil, photo = nil, location : {Float64, Float64}? = nil, &wit : (String, String, Wit::Actions -> Wit::State))
    handler = message_handler(msg, user, bot, photo: photo, location: location)
    handler.wit_client = WitClient.new(handler.user, handler, messages, &wit)
    handler.geocoder = Geocoder.new(geocoding || {} of String => Hash(String, {Float64, Float64}))
    handler.handle
    handler.bot.as(Bot).messages
  end

  def reply_buttons(msg)
    msg[:reply_markup].as(TelegramBot::ReplyKeyboardMarkup).keyboard.flatten.map(&.text)
  end

end
