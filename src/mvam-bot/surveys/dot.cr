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
          elsif state.converse
            "rectangle"
          else
            "circle"
          end

          style = id == "initial" ? ", style = dotted" : ""
          text = if say = state.say
            say = say.size > 36 ? "#{say[0..33]}..." : say
            say.chars.each_with_index.map do |(c, i)|
              (i > 0 && i % 12 == 0) ? "#{c}\n" : c
            end.join("")
          elsif state.converse
            "wit.ai/converse"
          else
            ""
          end

          write "#{id} [ label = \"#{id}\n#{text}\", shape = #{shape} #{style} ];"
          write "#{id} -> #{id} [ label = \"converse\" ]" if state.converse
        end

        flow.states.each do |id, state|
          state.transitions.each do |transition|
            next if transition.target == "back"
            label = if transition.action
              "action:#{transition.action}"
            elsif transition.entity
              "entity:#{transition.entity_name}"
            elsif transition.intent
              "intent:#{transition.intent}"
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
