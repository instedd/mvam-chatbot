require "../src/mvam-bot/models/*"
require "../src/mvam-bot/geocoding/*"
require "../src/mvam-bot/wit/*"
require "../src/mvam-bot/handlers/*"
require "../src/mvam-bot/surveys/*"
require "./mvam-bot/*"

# Start the bot
MvamBot::Bot.new(MvamBot::Config.telegram_token).run
