module MvamBot
  module Surveys
    class Timeout

      def initialize(@messenger : UserMessenger, @target : String)
        @cancelled = false
        @ran = false
      end

      def schedule(time)
        spawn do
          sleep time
          run unless @cancelled || @ran
        end

        self
      end

      def cancel
        @cancelled = true
      end

      def run
        @ran = true
        MvamBot.logger.info("Executing timeout to transition #{@target} for user #{@messenger.user.id}")
        Survey.new(@messenger).run @target
      end

    end
  end
end
