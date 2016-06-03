require "TelegramBot"

module MvamBot

  class MessageHandler

    getter message
    getter user
    getter bot

    def initialize(@message : TelegramBot::Message, @user : User, @bot : MvamBot::Bot)
    end

    def handle
      return if message.text.nil? && message.location.nil?
      MvamBot::Logs::Message.create(user.id, false, message.text, Time.utc_now)

      if message.text =~ /^\/price(.*)/
        handle_price($~[1])
      elsif message.text == "/help"
        handle_help
      elsif message.text == "/start location" || message.text == "/location"
        handle_init_location
      elsif user.conversation_step == "location/gps"
        handle_step_gps
      elsif user.conversation_step == "location/gps_multiple_matches"
        handle_step_gps_multiple_matches
      elsif message.text =~ /^\/reset(.*)/
        handle_reset($~[1])
      elsif message.text == "/start"
        handle_start
      elsif user.conversation_step == "location/adm0"
        handle_step_location_adm0
      elsif user.conversation_step == "location/adm1"
        handle_step_location_adm1
      elsif user.conversation_step == "location/mkt"
        handle_step_location_mkt
      elsif user.conversation_step =~ /^survey\/(.*)/
        handle_survey($~[1])
      elsif wit = wit_client
        wit.converse(message.text.not_nil!)
      else
        handle_not_understood
      end
    end

    protected def wit_client
      if wit_token = MvamBot::Config.wit_access_token
        WitClient.new(wit_token, user, self)
      end
    end

    def handle_not_understood
      strike = user.conversation_step =~ /^misunderstood\/(\d+)/ ? ($~[1].to_i + 1) : 1
      user.conversation_step = "misunderstood/#{strike}"
      extra = strike > 2 ? " Send `/help` if you want information on how I can be of assistance." : ""
      answer("Sorry, I did not understand what you just said.#{extra}")
    end

    def handle_survey(step)
      MvamBot::Surveys::Survey.new(user, self, state_id: step).handle(message)
    end

    def handle_start
      if wit = wit_client
        wit.converse("/start")
      else
        answer("Hello! I'm a WFP bot assistant. Send `/help` if you want information on how I can be of assistance.")
      end
    end

    def handle_reset(what)
      what = what.strip
      options = "session"
      case what
      when ""
        return answer("Choose what attribute you want to reset from your user: #{options}.")
      when "session"
        user.conversation_step = nil
        user.conversation_session_id = nil
        user.conversation_state.clear
        return answer("Your session has been reset.")
      when "location"
        user.location_adm0_id = nil
        user.location_adm1_id = nil
        user.location_mkt_id = nil
        user.location_lat = nil
        user.location_lng = nil
        return answer("Your location has been reset.")
      else
        return answer("I do not know how to reset #{what}. You can choose between: #{options}.")
      end
    end

    def handle_price(query)
      user.conversation_step = nil
      return handle_init_location("Before we start, I need to know where you are. ") if user.location_adm0_id.nil?

      # If the user sent no query, show usage with an example
      if query.strip.empty?
        return answer("Send `/price FOOD` to get the prices of a food near you.#{sample_price_query}")
      end

      prices = Price.search_by_name(query.strip, limit: 50, adm0_id: user.location_adm0_id, adm1_id: user.location_adm1_id, mkt_id: user.location_mkt_id)

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

    def handle_help
      user.conversation_step = nil
      sample = user.location_adm0_id ? sample_price_query : ""
      answer <<-ANSWER
        You can ask for the price of a commodity in your location using the `/price` command.#{sample}

        You can also ask for prices in any chat screen by mentioning me. Try typing `@#{MvamBot::Config.telegram_bot_name}` on any conversation with a friend.

        At any time, you can change your location by sending me the command `/location`.
        ANSWER
    end

    private def sample_price_query
      sample_prices = Price.search_by_commodity_id(nil, limit: 1, adm0_id: user.location_adm0_id, adm1_id: user.location_adm1_id, mkt_id: user.location_mkt_id)
      sample_prices.empty? ? "" : " For example, try sending `/price #{sample_prices[0].short_commodity_name.downcase}`."
    end

    def handle_init_location(extra_text = nil)
      if user.position_changed_recently?
        if user.location_adm0_id
          user.clear_location
          user.clear_gps_data
          init_step_location_adm0
        else
          set_location_from_gps(user.location_lat.not_nil!, user.location_lng.not_nil!)
        end
      else
        user.clear_location
        user.clear_gps_data
        user.conversation_step = "location/gps"

        keyboard = TelegramBot::ReplyKeyboardMarkup.new([[
          TelegramBot::KeyboardButton.new("Sure", request_location: true),
          TelegramBot::KeyboardButton.new("Not really", request_location: false)
        ]], one_time_keyboard: true)

        answer("Would you mind sharing your current position with us?", keyboard)
      end
    end

    def handle_step_gps(extra_text = nil)
      if message.location
        user.set_gps_position(message.location.not_nil!.latitude, message.location.not_nil!.longitude)

        set_location_from_gps(message.location.not_nil!)
      else
        init_step_location_adm0(extra_text)
      end
    end

    def set_location_from_gps(location : TelegramBot::Location)
      set_location_from_gps(location.latitude, location.longitude)
    end

    def set_location_from_gps(latitude : Float64, longitude : Float64)
      near_locations = MvamBot::Location::Mkt.around(latitude, longitude, count: 5, kilometers: 10)

      if near_locations.empty?
        init_step_location_adm0
      elsif near_locations.size > 1
        user.conversation_step = "location/gps_multiple_matches"
        answer_with_keyboard "Where would you like prices from?", near_locations.map(&.first.name)
      else
        mkt = near_locations[0][0]
        set_location_from_gps_match(mkt)
      end
    end

    def set_location_from_gps_match(mkt)
      mkt_id, adm1_id, adm0_id = MvamBot::Location::Mkt.full_path(mkt.id).map(&.first)

      user.location_adm0_id = adm0_id
      user.location_adm1_id = adm1_id
      user.location_mkt_id = mkt_id

      user.conversation_step = nil
      answer_location_complete(mkt)
    end

    def handle_step_gps_multiple_matches
      near_locations = MvamBot::Location::Mkt.around(user.location_lat.not_nil!, user.location_lng.not_nil!, count: 5, kilometers: 10)
      match = near_locations.map(&.first).find { |m| m.name == message.text }
      if match
        set_location_from_gps_match(match)
      else
        init_step_location_adm0
      end
    end

    def init_step_location_adm0(extra_text = nil)
      user.conversation_step = "location/adm0"
      answer_with_keyboard "#{extra_text}What country do you live in?", Location::Adm0.all.map(&.name).sort
    end

    def handle_step_location_adm0
      if location = Location::Adm0.find_by_name(message.text)
        user.location_adm0_id = location.id
        request_location_adm1(location)
      else
        answer_with_keyboard "Sorry, I do not have information on #{message.text}. Please pick a country from the list.", Location::Adm0.all.map(&.name).sort
      end
    end

    def request_location_adm1(location_adm0)
      locations = Location::Adm1.where_adm0_id(location_adm0.id)
      if locations.size == 0
        user.conversation_step = nil
        answer_location_complete(location_adm0)
      elsif locations.size == 1
        location_adm1 = locations.first
        user.location_adm1_id = location_adm1.id
        request_location_mkt(location_adm1)
      else
        user.conversation_step = "location/adm1"
        answer_with_keyboard "And where in #{location_adm0.name} are you?", locations.map(&.name).sort
      end
    end

    def handle_step_location_adm1
      if location = Location::Adm1.find_by_name(message.text, user.location_adm0_id.not_nil!)
        user.location_adm1_id = location.id
        request_location_mkt(location)
      else
        answer_with_keyboard "Sorry, I do not have information on #{message.text}. Please pick a region from the list.", Location::Adm1.where_adm0_id(user.location_adm0_id.not_nil!).map(&.name).sort
      end
    end

    def request_location_mkt(location_adm1)
      locations = Location::Mkt.where_adm1_id(location_adm1.id)
      if locations.size == 0
        user.conversation_step = nil
        answer_location_complete(location_adm1)
      elsif locations.size == 1
        location_mkt = locations.first
        user.location_mkt_id = location_mkt.id
        user.conversation_step = nil
        answer_location_complete(location_mkt)
      else
        user.conversation_step = "location/mkt"
        answer_with_keyboard "And which city in #{location_adm1.name} would you like information from?", locations.map(&.name).sort
      end
    end

    def handle_step_location_mkt
      if location = Location::Mkt.find_by_name(message.text, user.location_adm1_id.not_nil!)
        user.location_mkt_id = location.id
        user.conversation_step = nil
        answer_location_complete(location)
      else
        answer_with_keyboard "Sorry, I do not have information on #{message.text}. Please pick a city from the list.", Location::Mkt.where_adm1_id(user.location_adm1_id.not_nil!).map(&.name).sort
      end
    end

    def answer_location_complete(location)
      answer "Got it, I will send you food prices from #{location.name}. If you want to change it at anytime, just send `/location`."
    end

    def answer_with_keyboard(text : String, buttons : Array(String), update_user : Bool = true)
      keyboard = TelegramBot::ReplyKeyboardMarkup.new(buttons.map {|b| [b]}, one_time_keyboard: true)
      answer(text, keyboard, update_user)
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

  end

end
