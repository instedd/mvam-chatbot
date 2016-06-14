require "io"

module MvamBot

  module Surveys

    class DotGenerator

      def self.draw(path)
        self.new(STDOUT).generate(MvamBot::Surveys::Flow.from_yaml(File.read(path)))
      end

      def initialize(@io : IO)
      end

      def generate(flow : Flow)
        write "digraph survey_flow {", tabs: 0
        write "rankdir=LR;"
        write "size=\"40\";"

        flow.states.each do |id, state|
          shape = if state.final
            "doublecircle"
          else
            "circle"
          end

          style = state.dummy ? "dotted" : "solid"

          text = if say = state.say
            say = say.size > 36 ? "#{say[0..33]}..." : say
            say.chars.each_with_index.map do |(c, i)|
              (i > 0 && i % 12 == 0) ? "#{c}\n" : c
            end.join("")
          else
            ""
          end
          text = text.gsub("\"", "\\\"")

          write "#{id} [ label = \"#{id}\n#{text}\", shape = #{shape}, style= #{style} ];"
        end

        flow.states.each do |id, state|
          state.transitions.each do |transition|
            next if transition.target == "back" || transition.target == "none"
            label = case transition.kind
                    when :entity
                      "entity:#{transition.entity}"
                    when :intent
                      "intent:#{transition.intent}"
                    when :message
                      transition.message.not_nil!.join("/")
                    when :photo
                      "photo"
                    when :location
                      "location"
                    when :method
                      "method:#{transition.method}"
                    when :default
                      "otherwise"
                    when :failure
                      "failure"
                    end
            dir = flow.states[transition.target].transitions.any? { |t| t.target == "back" } ? "both" : "forward"

            write "#{id} -> #{transition.target} [ label = \"#{label}\", dir = #{dir} ];"
          end
        end

        write "}", tabs: 0
      end

      private def write(str, tabs = 1)
        @io << ("\t" * tabs) << str << "\n"
      end

    end

  end

end
