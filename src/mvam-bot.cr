require "./mvam"

# Start the bot
MvamBot::Bot.new(MvamBot::Config.telegram_token).run
