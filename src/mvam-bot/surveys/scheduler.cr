module MvamBot
  module Surveys
    class Scheduler
      def initialize(@bot : MvamBot::Bot)
      end

      def run_surveys
        MvamBot::User.to_survey.each do |user|
          run_survey(user)
        end
      end

      def run_survey(user)
        definition = MvamBot::MessageHandler.fetch_bot_definition(user.facebook_page_id, user)
        MvamBot.logger.info("Running scheduled survey for user #{user.id} with bot #{definition || "default"}")
        messenger = MvamBot::UserMessenger::Telegram.new(user, @bot)
        MvamBot::Surveys::Survey.new(messenger, flow: definition.try(&.flow)).start
      end
    end
  end
end
