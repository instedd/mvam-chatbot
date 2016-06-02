require "./mvam-bot/models/*"
require "./mvam-bot/handlers/*"
require "./mvam-bot/wit/*"
require "./mvam-bot/surveys/*"
require "./mvam-bot/*"

# Start the bot
MvamBot::Bot.new(MvamBot::Config.telegram_token).run
