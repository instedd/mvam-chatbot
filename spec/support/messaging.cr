module MvamBot::Spec

  def handle_message(msg, user=nil)
    bot = Bot.new
    message = Telegram.message(msg)
    MvamBot::MessageHandler.new(message, user || Factory.user, bot).handle
    bot.messages
  end

end
