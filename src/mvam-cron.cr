require "./mvam"

bot = MvamBot::Bot.new(MvamBot::Config.telegram_token)
scheduler = MvamBot::Surveys::Scheduler.new(bot)

MvamBot.logger.info("Starting surveys scheduler cron")
loop do
  scheduler.run_surveys
  sleep 60
end
