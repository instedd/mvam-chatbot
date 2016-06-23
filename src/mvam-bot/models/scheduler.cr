module MvamBot
  module Scheduler

    @@tasks = {} of String => Task

    def self.schedule(ref, time, &block)
      @@tasks[ref] = task = Task.new(&block)

      spawn do
        sleep time
        task.run
      end
    end

    def self.cancel(ref)
      if task = @@tasks.delete(ref)
        task.cancel
      end
    end

    # Exposed for testing purposes exclusively
    def self.find_task(ref)
      @@tasks[ref]?
    end

    # TODO: HACK!
    # Find a way to avoid knowing the patterns defined in scheduler's clients here.
    def self.cancel_user_tasks(user_id)
      pattern = /(survey|geolocation)\/#{user_id}/
      @@tasks.keys
             .select { |ref| pattern.match(ref) }
             .each   { |task| cancel(task) }
    end

    class Task

      def initialize(&block)
        @block = block
        @cancelled = false
        @ran = false
      end

      def cancel
        @cancelled = true
      end

      def run
        unless @cancelled || @ran
          @ran = true
          @block.call
        end
      end

    end
  end
end
