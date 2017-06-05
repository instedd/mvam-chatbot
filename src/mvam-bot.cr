require "./mvam"

# Start the bot
if MvamBot::Config.telegram?
  MvamBot::Bot::Telegram.new(MvamBot::Config.telegram_token).run
elsif MvamBot::Config.facebook?
  MvamBot::Bot::Facebook.new(MvamBot::Config.facebook_access_token, MvamBot::Config.facebook_verify_token).run
else
  raise "Must set facebook or telegram access token"
end
