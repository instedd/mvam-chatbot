require "./mvam-bot/*"

bot = MvamBot::Bot.new(MvamBot::Config.telegram_token)
bot.polling
