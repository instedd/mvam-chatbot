require "./mvam-bot/models/*"
require "./mvam-bot/handlers/*"
require "./mvam-bot/*"

bot = MvamBot::Bot.new(MvamBot::Config.telegram_token)
bot.polling
