require "./mvam"

# Start the bot
MvamBot::Bot::Telegram.new(MvamBot::Config.telegram_token).run
