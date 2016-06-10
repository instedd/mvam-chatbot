require "TelegramBot"

module MvamBot

  class MessageHandler

    include MvamBot::WitUtils

    getter message
    getter user
    getter bot

    def initialize(@message : TelegramBot::Message, @user : User, @bot : MvamBot::Bot)
    end

    def handle
      return if message.text.nil? && message.location.nil? && message.photo.nil?
      log = message.text || (message.photo ? "[photo]" : nil) || (message.location ? "[location]" : nil) || "empty"
      MvamBot::Logs::Message.create(user.id, false, log, Time.utc_now)

      if message.text =~ /^\/price(.*)/
        handle_price($~[1])
      elsif message.text =~ /^\/echo(.*)/
        handle_echo($~[1])
      elsif message.text =~ /^\/help/
        handle_help
      elsif message.text =~ /^\/reset(.*)/
        handle_reset($~[1])
      elsif message.text == "/start"
        handle_start
      elsif MvamBot::Geolocation.handles? user, message
        geolocation.handle
      elsif user.conversation_step =~ /^survey\/([^\/?]+)(?:\?from=)?([^\/]+)?/
        handle_survey($~[1], $~[2]?)
      elsif text = message.text
        wit_message = wit_client.understand(text)
        handle_wit_message(wit_message)
      end
    end

    protected def wit_client
      WitClient.new(MvamBot::Config.wit_access_token.not_nil!, user, self)
    end

    protected def geocoder
      Geocoding.init
    end

    def handle_not_understood
      strike = user.conversation_step =~ /^misunderstood\/(\d+)/ ? ($~[1].to_i + 1) : 1
      user.conversation_step = "misunderstood/#{strike}"
      extra = strike > 2 ? " Send `/help` if you want information on how I can be of assistance." : ""
      answer("Sorry, I did not understand what you just said.#{extra}")
    end

    def handle_survey(step, previous)
      MvamBot::Surveys::Survey.new(user, self, state_id: step, previous_state_id: previous).handle(message)
    end

    def geolocation
      MvamBot::Geolocation.new(user, self)
    end

    def handle_echo(echo)
      echo = echo.strip
      msg = echo.empty? ? Time.utc_now.to_s : "#{echo} on #{Time.utc_now}"
      answer msg
    end

    def handle_start
      MvamBot::Surveys::Survey.new(user, self).start
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

    def handle_price(query)
      user.conversation_step = "queryprice/#{query}"
      return geolocation.start("Before I can provide prices information, I need to know where you are. ") if user.location_adm0_id.nil?

      # If the user sent no query, show usage with an example
      if query.strip.empty?
        sample_text = (sample = sample_price) ? " For example, try sending `/price #{sample}`." : ""
        return answer("Send `/price FOOD` to get the prices of a food near you." + sample_text)
      end

      prices = prices_for(query.strip)

      # If there are no results, ask the user to try another query
      if prices.empty?
        return answer("Sorry, I have no information on _#{query.strip}_ in #{Location::Adm0.find(user.location_adm0_id.not_nil!).name}.")

      # If there is more than a single commodity that matches, display an inline keyboard to choose one
      elsif prices.map(&.commodity_id).uniq.size > 1
        options = prices.map{|p| {p.commodity_name, "commodity/#{p.commodity_id}"}}.uniq
        return answer_with_inline("I have information on #{options.map{|opt| opt[0]}.join(", ")}; please choose one.", options)

      # Otherwise, show a description of the prices
      else
        answer(Price.description(prices, user: user, format: :markdown))
      end
    end

    def handle_whois
      user.conversation_step = nil
      answer "I am a chatbot, I work for WFP. You can ask me information on prices for local commodities. Send `/help` for more information."
    end

    def handle_help
      user.conversation_step = nil
      sample_text = (sample = sample_price) ? " For example, `/price #{sample}`." : ""
      answer <<-ANSWER
        You can ask for the price of a commodity in your location using the `/price` command.#{sample_text}

        You can also ask for prices in any chat screen by mentioning me. Try typing `@#{MvamBot::Config.telegram_bot_name}` on any conversation with a friend.

        At any time, you can change your location by sending me the command `/location`.
        ANSWER
    end

    def handle_wit_message(wit_message)
      entities = wit_message.entities
      intent = extract_value(entities, "intent")

      if commodity = extract_value(entities, "commodity")
        handle_price(commodity.to_s)
      elsif intent == INTENT_QUERY_PRICE
        user.conversation_step = "queryprice/"
        if user.location_adm0_id.nil?
          geolocation.start("Before I can provide prices information, I need to know where you are. ")
        else
          sample_text = (sample = sample_price) ? " For example, you can ask for `#{sample}`." : ""
          answer("What do you want to know the price of?" + sample_text)
        end
      elsif user.conversation_step =~ /^queryprice/
        if message.text && commodity_names.any?{ |commodity| commodity.downcase.includes?(message.text.not_nil!.strip) }
          handle_price(message.text.not_nil!)
        else
          sample_text = (sample = sample_price) ? " For example, you can ask for `#{sample}`." : ""
          answer("Sorry, I did not understand which price you are looking for." + sample_text)
        end
      elsif intent == INTENT_SALUTATION
        handle_start
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

    private def prices_for(query)
      Price.search_by_name(query.strip, limit: 50, adm0_id: user.location_adm0_id, adm1_id: user.location_adm1_id, mkt_id: user.location_mkt_id)
    end

    private def sample_price
      return nil if user.location_adm0_id.nil?
      sample_prices = Price.search_by_commodity_id(nil, limit: 1, adm0_id: user.location_adm0_id, adm1_id: user.location_adm1_id, mkt_id: user.location_mkt_id)
      sample_prices.empty? ? nil : sample_prices[0].short_commodity_name.downcase
    end

    private def commodity_names
      Price.commodity_names
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
