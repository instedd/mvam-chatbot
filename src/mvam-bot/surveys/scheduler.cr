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
        MvamBot.logger.info("Running scheduled survey for user #{user.id}")
        messenger = MvamBot::UserMessenger.new(user, @bot)
        MvamBot::Surveys::Survey.new(messenger).start
      end

    end

  end

end
