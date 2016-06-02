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

    getter query_replies

    @query_replies = Array({inline_query_id: String, results: Array(TelegramBot::InlineQueryResult), cache_time: Int32?, is_personal: Bool?, next_offset: String?, switch_pm_text: String?, switch_pm_parameter: String?}).new

    def answer_inline_query(inline_query_id : String,
                            results : Array(TelegramBot::InlineQueryResult),
                            cache_time : Int32? = nil,
                            is_personal : Bool? = nil,
                            next_offset : String? = nil,
                            switch_pm_text : String? = nil,
                            switch_pm_parameter : String? = nil) : Bool?
      @query_replies << { inline_query_id: inline_query_id, results: results.map &.as(TelegramBot::InlineQueryResult), cache_time: cache_time, is_personal: is_personal, next_offset: next_offset, switch_pm_text: switch_pm_text, switch_pm_parameter: switch_pm_parameter }
      nil
    end
  end

end
