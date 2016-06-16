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
