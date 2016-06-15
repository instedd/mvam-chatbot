module MvamBot

  class UserMessenger

    getter user
    getter chat_id
    getter bot

    def initialize(@user : MvamBot::User, @bot : TelegramBot::Bot)
      @chat_id = @user.id
    end

    def initialize(@user : MvamBot::User, @chat_id : Int32, @bot : TelegramBot::Bot)
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

      MvamBot.logger.debug "< SendMessage #{chat_id}, #{text}, keyboard: #{keyboard.inspect}"
      MvamBot::Logs::Message.create(user.id, true, text, Time.utc_now)

      bot.send_message chat_id, text, reply_markup: keyboard, parse_mode: "Markdown"
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

    def download_photo(file_id : String)
      # TODO: Download photo in a separate fiber to avoid blocking; check for issues with accessing the DB connection from there
      file = bot.get_file(file_id)
      raw = bot.download(file)
      MvamBot.logger.debug("Downloaded photo #{file_id} for user #{user.id} #{user.username}")

      # Use the telegram unique identifier as our own id
      MvamBot::DataFile.create(id: file_id, user_id: user.id, extension: "jpg", data: raw.to_slice, kind: "image")
      return file_id
    end


  end

end
