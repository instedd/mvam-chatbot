require "TelegramBot"

module MvamBot

  class MessageHandler

    getter :message
    getter :user
    getter :bot

    def initialize(@message : TelegramBot::Message, @user : User, @bot : MvamBot::Bot)
    end

    def handle
      if message.text == "/start location" || message.text == "/location"
        handle_init_location
      elsif user.conversation_step == "location/adm0"
        handle_step_location_adm0
      elsif user.conversation_step == "location/adm1"
        handle_step_location_adm1
      elsif user.conversation_step == "location/mkt"
        handle_step_location_mkt
      end
    end

    def handle_init_location
      user.location_adm0_id = nil
      user.location_adm1_id = nil
      user.location_mkt_id = nil
      user.conversation_step = "location/adm0"
      answer "What country do you live in?", Location::Adm0.all.map(&.name)
    end

    def handle_step_location_adm0
      if location = Location::Adm0.find_by_name(message.text)
        user.location_adm0_id = location.id
        request_location_adm1(location)
      else
        answer "Sorry, I do not have information on #{message.text}. Please pick a country from the list.", Location::Adm0.all.map(&.name)
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
        answer "And where in #{location_adm0.name} are you?", locations.map(&.name)
      end
    end

    def handle_step_location_adm1
      if location = Location::Adm1.find_by_name(message.text, user.location_adm0_id.not_nil!)
        user.location_adm1_id = location.id
        request_location_mkt(location)
      else
        answer "Sorry, I do not have information on #{message.text}. Please pick a region from the list.", Location::Adm1.where_adm0_id(user.location_adm0_id.not_nil!).map(&.name)
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
        answer "And which city in #{location_adm1.name} would you like information from?", locations.map(&.name)
      end
    end

    def handle_step_location_mkt
      if location = Location::Mkt.find_by_name(message.text, user.location_adm1_id.not_nil!)
        user.location_mkt_id = location.id
        user.conversation_step = nil
        answer_location_complete(location)
      else
        answer "Sorry, I do not have information on #{message.text}. Please pick a city from the list.", Location::Mkt.where_adm1_id(user.location_adm1_id.not_nil!).map(&.name)
      end
    end

    def answer_location_complete(location)
      answer "Got it, I will send you food prices from #{location.name}. If you want to change it at anytime, just send /location."
    end

    def answer(text : String, keyboard_buttons : Array(String) = nil)
      keyboard = if keyboard_buttons
        TelegramBot::ReplyKeyboardMarkup.new(keyboard_buttons.map {|b| [b]}, one_time_keyboard: true)
      else
        TelegramBot::ReplyKeyboardHide.new
      end

      bot.send_message message.chat.id, text, reply_markup: keyboard
      user.conversation_at = Time.utc_now
      user.update
    end

  end

end
