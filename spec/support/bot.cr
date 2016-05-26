module MvamBot::Spec

  class Bot < MvamBot::Bot

    def initialize()
      super("")
    end

    getter messages

    @messages = Array({chat_id: Int32 | String, text: String, parse_mode: String?, disable_web_page_preview: Bool?, disable_notification: Bool?, reply_to_message_id: Int32?, reply_markup: TelegramBot::Bot::ReplyMarkup}).new

    def send_message(chat_id : Int32 | String,
                     text : String,
                     parse_mode : String? = nil,
                     disable_web_page_preview : Bool? = nil,
                     disable_notification : Bool? = nil,
                     reply_to_message_id : Int32? = nil,
                     reply_markup : TelegramBot::Bot::ReplyMarkup = nil) : TelegramBot::Message?
      @messages << {chat_id: chat_id, text: text, parse_mode: parse_mode, disable_web_page_preview: disable_web_page_preview, disable_notification: disable_notification, reply_to_message_id: reply_to_message_id, reply_markup: reply_markup}
      nil
    end

  end

end
