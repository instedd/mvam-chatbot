module MvamBot
  abstract class UserMessenger
    getter user : MvamBot::User
    getter chat_id : Int32 | String
    getter bot : MvamBot::Bot

    def initialize(@user : MvamBot::User, @bot : MvamBot::Bot)
      @chat_id = @user.id
    end

    def initialize(@user : MvamBot::User, @chat_id : Int32 | String, @bot : MvamBot::Bot)
    end

    abstract def answer_with_location_request(text : String, yes_text : String, no_text : String)
    abstract def answer_with_keyboard(text : String, options : Array(String) | Array(Surveys::Option), update_user : Bool, layout : Symbol)
    abstract def answer_with_inline(text : String, buttons : Array(Tuple(String, String)))
    abstract def answer(text : String, update_user : Bool)
  end

  class UserMessenger::Facebook < UserMessenger
    def bot
      super.as(MvamBot::Bot::Facebook)
    end

    def chat_id
      super.as(String)
    end

    def answer_with_location_request(text : String, yes_text : String, no_text : String)
      answer(text)
    end

    def answer_with_keyboard(text : String, options : Array(String) | Array(Surveys::Option), update_user = true, layout = :vertical)
      answer(text, update_user)
    end

    def answer_with_inline(text : String, buttons : Array(Tuple(String, String)))
      answer(text)
    end

    def answer(text : String, update_user : Bool = true)
      MvamBot.logger.debug "< SendMessage #{chat_id}, #{text}"
      MvamBot::Logs::Message.create(user.id, true, text, Time.utc_now)

      bot.send_text chat_id, text
      user.conversation_at = Time.utc_now
      user.update if update_user
    end

    def download_photo(file_id : String)
      nil
    end
  end

  class UserMessenger::Telegram < UserMessenger
    def bot
      super.as(MvamBot::Bot::Telegram)
    end

    def chat_id
      super.as(Int32)
    end

    def answer_with_location_request(text : String, yes_text : String, no_text : String)
      keyboard = TelegramBot::ReplyKeyboardMarkup.new([
        [TelegramBot::KeyboardButton.new(yes_text, request_location: true)],
        [TelegramBot::KeyboardButton.new(no_text, request_location: false)],
      ], one_time_keyboard: true)
      answer(text, keyboard)
    end

    def answer_with_keyboard(text : String, options : Array(String) | Array(Surveys::Option), update_user = true, layout = :vertical)
      answer(text, build_keyboard(options, layout), update_user)
    end

    def answer_with_inline(text : String, buttons : Array(Tuple(String, String)))
      keyboard = TelegramBot::InlineKeyboardMarkup.new(buttons.map { |b| TelegramBot::InlineKeyboardButton.new(text: b[0], callback_data: b[1]) })
      answer(text, keyboard)
    end

    def answer(text : String, update_user : Bool = true)
      answer(text, nil, update_user)
    end

    def answer(text : String, keyboard : TelegramBot::ReplyKeyboardMarkup | TelegramBot::InlineKeyboardMarkup | Nil = nil, update_user : Bool = true)
      keyboard ||= TelegramBot::ReplyKeyboardRemove.new

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
      raw = bot.download_file(file_id).not_nil!
      MvamBot.logger.debug("Downloaded photo #{file_id} for user #{user.id} #{user.username}")

      # Use the telegram unique identifier as our own id
      MvamBot::DataFile.create(id: file_id, user_id: user.id, extension: "jpg", data: raw.to_slice, kind: "image")
      return file_id
    end
  end
end
