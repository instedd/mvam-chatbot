require "./mvam"

MvamBot.logger.info("Starting notification sender process")

bot = MvamBot::Bot.new(MvamBot::Config.telegram_token)

loop do
  if delivery = MvamBot::News.dequeue_delivery
    content = MvamBot::News.find_content_by_id(delivery.content_id)
    user = MvamBot::User.find(delivery.user_id).not_nil!

    MvamBot::UserMessenger.new(user, bot).answer(text: content.message, update_user: false)
  else
    sleep 5
  end
end
