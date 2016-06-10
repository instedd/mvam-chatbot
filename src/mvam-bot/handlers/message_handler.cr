require "TelegramBot"
require "process"

module MvamBot

  class MessageHandler

    include MvamBot::WitUtils

    getter message
    getter user
    getter bot
    getter wit : Wit::MessageResponse?

    include MvamBot::WitUtils

    def initialize(@message : TelegramBot::Message, @user : User, @bot : MvamBot::Bot)
    end

    def handle
      return if message.text.nil? && message.location.nil? && message.photo.nil? && message.voice.nil?
      log = message.text || (message.voice ? "voice://#{message.voice.not_nil!.file_id}" : nil) || (message.photo ? "[photo]" : nil) || ((location = message.location) ? "#{location.latitude}, #{location.longitude}" : nil) || "empty"
      MvamBot::Logs::Message.create(user.id, false, log, Time.utc_now)

      if message.voice
        handle_voice
      elsif message.text =~ /^\/echo(.*)/
        handle_echo($~[1])
      elsif message.text =~ /^\/help/
        handle_help
      elsif message.text =~ /^\/reset(.*)/
        handle_reset($~[1])
      elsif message.text == "/start"
        survey.start
      elsif MvamBot::Topics::Geolocation.handles? user, message
        geolocation.handle
      elsif MvamBot::Topics::Prices.handles? user, message
        prices.handle
      elsif MvamBot::Surveys::Survey.handles? user, message
        survey.handle message
      elsif text = message.text
        @wit = wit_client.understand(text)
        handle_wit_message
      end
    end

    def handle_wit_message
      wit_message = @wit.not_nil!
      intent = extract_value(wit_message.entities, "intent")

      if MvamBot::Topics::Prices.handles? user, message, wit: wit_message
        prices.handle
      elsif MvamBot::Surveys::Survey.handles? user, message
        survey.handle message, wit_response: wit_message
      elsif intent == INTENT_SALUTATION
        survey.start
      elsif intent == INTENT_ASK_CAPABILITIES
        handle_help
      elsif intent == INTENT_ASK_WHO
        handle_whois
      elsif intent == INTENT_THANKS
        answer "😀"
      else
        handle_not_understood
      end
    end

    def handle_not_understood
      strike = user.conversation_step =~ /^misunderstood\/(\d+)/ ? ($~[1].to_i + 1) : 1
      user.conversation_step = "misunderstood/#{strike}"
      extra = strike > 2 ? " Send `/help` if you want information on how I can be of assistance." : ""
      answer("Sorry, I did not understand what you just said.#{extra}")
    end

    def handle_echo(echo)
      echo = echo.strip
      msg = echo.empty? ? Time.utc_now.to_s : "#{echo} on #{Time.utc_now}"
      answer msg
    end

    def handle_reset(what)
      what = what.strip.split(" ")
      command, params = what[0], what[1..-1]
      options = "session, location, step"
      case command
      when ""
        return answer("Choose what attribute you want to reset from your user: #{options}.")
      when "session"
        user.conversation_step = nil
        user.conversation_session_id = nil
        user.conversation_state.clear
        return answer("Your session has been reset.")
      when "location"
        user.clear_all_location_data
        return answer("Your location has been reset.")
      when "step"
        user.ensure_session_id
        user.conversation_step = "survey/#{params[0]}"
        return answer("Your survey has been set to `#{params[0]}`.")
      else
        return answer("I do not know how to reset #{command}. You can choose between: #{options}.")
      end
    end

    def handle_whois
      user.conversation_step = nil
      answer "I am a chatbot, I work for WFP. You can ask me for information on prices for local commodities. Send `/help` for more information."
    end

    def handle_help
      user.conversation_step = nil
      sample_text = (sample = prices.sample_price) ? " For example, `/price #{sample}`." : ""
      answer <<-ANSWER
        You can ask for the price of a commodity in your location using the `/price` command.#{sample_text}

        You can also ask for prices in any chat screen by mentioning me. Try typing `@#{MvamBot::Config.telegram_bot_name}` on any conversation with a friend.

        At any time, you can change your location by sending me the command `/location`.
        ANSWER
    end

    def handle_voice
      voice = message.voice.not_nil!
      file_id = voice.file_id
      file = bot.get_file(file_id)
      mime = voice.mime_type
      raw = bot.download(file)

      MvamBot.logger.debug("Downloaded voice #{file_id} for user #{user.id}")

      # Convert to mp3
      mp3 = MemoryIO.new
      error = MemoryIO.new
      status = Process.run("ffmpeg", {"-f", "ogg", "-i", "pipe:0", "-nostdin", "-ac", "1", "-f", "mp3", "-"}, input: MemoryIO.new(raw.to_slice), output: mp3, error: error)

      # Save file locally in ogg if conversion failed and return
      unless status.success?
        MvamBot.logger.error("Error converting voice file: #{error.to_s}")
        MvamBot::DataFile.create(id: file_id, user_id: user.id, extension: "ogg", data: raw.to_slice, kind: "voice")
        return
      end

      # Save file locally as mp3
      MvamBot::DataFile.create(id: file_id, user_id: user.id, extension: "mp3", data: mp3.to_slice, kind: "voice")

      # Send to wit for processing
      if wit = wit_client
        wit_response = wit.speech(data: mp3.to_slice, content_type: "audio/mpeg3")
        message.text = wit_response._text
        @wit = wit_response
        handle_wit_message
      end
    end

    protected def wit_client
      WitClient.new(MvamBot::Config.wit_access_token.not_nil!, user, self)
    end

    protected def geocoder
      Geocoding.init
    end

    protected def survey
      MvamBot::Surveys::Survey.new(user, self)
    end

    protected def geolocation
      MvamBot::Topics::Geolocation.new(user, self)
    end

    protected def prices
      MvamBot::Topics::Prices.new(user, self)
    end

    def answer_location_complete(location)
      answer "Got it, I will send you food prices from #{location.name}. If you want to change it at anytime, just send `/location`."
    end

    def answer_with_keyboard(text : String, options : Array(String) | Array(Surveys::Option), update_user = true, layout = :vertical)
      answer(text, build_keyboard(options, layout), update_user)
    end

    def answer_with_inline(text : String, buttons : Array(Tuple(String, String)))
      keyboard = TelegramBot::InlineKeyboardMarkup.new(buttons.map {|b| TelegramBot::InlineKeyboardButton.new(text: b[0], callback_data: b[1])})
      answer(text, keyboard)
    end

    def answer(text : String, keyboard : TelegramBot::ReplyKeyboardMarkup | TelegramBot::InlineKeyboardMarkup | Nil = nil, update_user : Bool = true)
      keyboard ||= TelegramBot::ReplyKeyboardHide.new

      MvamBot.logger.debug "< SendMessage #{message.chat.id}, #{text}, keyboard: #{keyboard.inspect}"
      MvamBot::Logs::Message.create(user.id, true, text, Time.utc_now)

      bot.send_message message.chat.id, text, reply_markup: keyboard, parse_mode: "Markdown"
      user.conversation_at = Time.utc_now
      user.update if update_user
    end

    def build_keyboard(options, layout = :vertical)
      grid = layout == :vertical ? options.map { |o| [o] } : [options]

      buttons = grid.map do |row|
        row.map { |o| button(o) }
      end

      TelegramBot::ReplyKeyboardMarkup.new(buttons, one_time_keyboard: true)
    end

    def button(option : String)
      TelegramBot::KeyboardButton.new(option)
    end

    def button(option : Surveys::Option)
      TelegramBot::KeyboardButton.new(option.text, request_location: option.request_location)
    end

    def download_photo(file_id : String, user_id : Int32? = nil)
      # TODO: Download photo in a separate fiber to avoid blocking; check for issues with accessing the DB connection from there
      file = bot.get_file(file_id)
      raw = bot.download(file)
      MvamBot.logger.debug("Downloaded photo #{file_id} for user #{user_id || "NULL"}")

      # Use the telegram unique identifier as our own id
      MvamBot::DataFile.create(id: file_id, user_id: user_id, extension: "jpg", data: raw.to_slice, kind: "image")
      return file_id
    end

  end

end
