require "./mvam-bot/models/*"
require "./mvam-bot/handlers/*"
require "./mvam-bot/wit/*"
require "./mvam-bot/*"

require "micrate"

# Run migrations if --micrate specified
if ARGV.size > 0 && ARGV[0] == "--micrate"
  ARGV.shift
  Micrate::Cli.run
end

# Start the bot
MvamBot::Bot.new(MvamBot::Config.telegram_token).run
