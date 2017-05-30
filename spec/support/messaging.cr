module MvamBot::Spec

  class WitClient < ::MvamBot::WitClient
    @runner : Proc(String, String, ::Wit::Actions, ::Wit::State)?

    def initialize(user, messenger, @messages : Hash(String, ::Wit::MessageResponse)? = nil, @understand : ::Wit::MessageResponse? = nil)
      super(user, token: "")
      @messages ||= Hash(String, ::Wit::MessageResponse).new
    end

    protected def understand(message : String)
      get_message(message, "")
    end

    protected def get_message(message : String, session : String)
      @messages.not_nil![message]? || @understand.not_nil!
    end
  end

  class Geocoder < ::MvamBot::Geocoding::Geocoder

    @lookup_results : Hash({String, String}, Hash(String, {Float64, Float64}))
    @reverse_lookup_results : Hash({Float64, Float64}, MvamBot::Geocoding::ReverseGeocodingResult)

    def initialize
      @lookup_results = {} of {String, String} => Hash(String, {Float64, Float64})
      @reverse_lookup_results = {} of {Float64, Float64} => MvamBot::Geocoding::ReverseGeocodingResult
    end

    def lookup(query, country)
      @lookup_results.fetch({query, country}, {} of String => {Float64, Float64})
    end

    def expect_lookup(query, country, &block : -> Hash(String, {Float64, Float64}))
      @lookup_results[{query, country}] = block.call
    end

    def reverse(lat, lng)
      @reverse_lookup_results[{lat, lng}]?
    end

    def expect_reverse_lookup(lat, lng, &block : -> MvamBot::Geocoding::ReverseGeocodingResult)
      @reverse_lookup_results[{lat, lng}] = block.call
    end

    def expect_user_position_lookup(user, &block : -> MvamBot::Geocoding::ReverseGeocodingResult)
      lat = user.conversation_state["lat"].not_nil!.as(Float64)
      lng = user.conversation_state["lng"].not_nil!.as(Float64)
      expect_reverse_lookup(lat, lng, &block)
    end
  end

  class MessageHandler < ::MvamBot::MessageHandler
    setter wit_client
    @wit_client : ::MvamBot::WitClient?

    setter geocoder
    @geocoder : ::MvamBot::Geocoding::Geocoder?

    def initialize(*args)
      super(*args)
    end

    protected def wit_client
      @wit_client || super
    end

    protected def geocoder
      @geocoder || super
    end

    def messenger
      super
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

  def handle_message(msg = nil, user = nil, bot = nil, messages = nil, geocoder = nil, understand = nil, photo : String? = nil, location : {Float64, Float64}? = nil)
    handler = message_handler(msg, user, bot, photo: photo, location: location)
    handler.wit_client = WitClient.new(handler.user, handler.messenger, messages, understand)
    handler.geocoder = geocoder || Geocoder.new
    handler.handle
    handler.bot.as(Bot).messages
  end

  def reply_buttons(msg)
    msg[:reply_markup].as(TelegramBot::ReplyKeyboardMarkup).keyboard.flatten.map(&.text)
  end

end
