module MvamBot
  class CallbackQueryHandler
    getter :callback
    getter :user
    getter :bot

    def initialize(@callback : TelegramBot::CallbackQuery, @user : User, @bot : MvamBot::Bot::Telegram)
    end

    def handle
      if callback.data =~ /^commodity\/(.+)/
        handle_commodity_choice($~[1].to_i)
      end
    end

    def handle_commodity_choice(commodity_id)
      prices = Price.search_by_commodity_id(commodity_id, limit: 10, adm0_id: user.location_adm0_id, adm1_id: user.location_adm1_id, mkt_id: user.location_mkt_id)
      text = Price.description(prices, user: user, format: :markdown)
      edit_message(text)
    end

    protected def edit_message(text)
      MvamBot::Logs::Callback.create(user_id: user.id, data: callback.data, answer: text, timestamp: Time.utc_now)
      message = callback.message.not_nil!
      bot.edit_message_text(chat_id: message.chat.id, message_id: message.message_id, text: text, parse_mode: "Markdown")
    end
  end
end
