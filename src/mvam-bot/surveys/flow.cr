require "yaml"

module MvamBot

  module Surveys

    class Flow
      YAML.mapping({
        states: { type: Hash(String, FlowState), converter: FlowStates },
        data: { type: Array(String) }
      })

      def start
        states.values.find(&.initial).not_nil!
      end
    end

    class FlowStates
      def self.from_yaml(pull)
        hash = Hash(String, FlowState).new
        pull.read_mapping_start
        while pull.kind != YAML::EventKind::MAPPING_END
          id = String.new(pull)
          hash[id] = FlowState.new(id, pull)
        end
        pull.read_next
        hash
      end
    end

    class FlowState

      YAML.mapping({
        converse: { type: Bool, default: false },
        dummy: { type: Bool, nilable: true },
        say: { type: String, nilable: true },
        transitions: { type: Array(FlowTransition), default: Array(FlowTransition).new },
        initial: { type: Bool, default: false },
        final: { type: Bool, default: false },
        options: { type: Array(Option), nilable: true },
        transient: { type: Bool, default: false }
      })

      getter id

      def initialize(@id : String?, pull : YAML::PullParser)
        initialize(pull)
      end

    end

    class FlowTransition

      YAML.mapping({
        target: { type: String },
        after: { type: Int32, nilable: true },
        action: { type: String, nilable: true },
        entity: { type: String, nilable: true },
        intent: { type: String, nilable: true },
        message: { type: Array(String), nilable: true },
        default: { type: Bool, default: false },
        store: { type: String, nilable: true },
        photo: { type: Bool, default: false },
        location: { type: Bool, default: false },
        method: { type: String, nilable: true },
        say: { type: String, nilable: true }
      })

      def kind
        if message
          :message
        elsif intent
          :intent
        elsif entity
          :entity
        elsif photo
          :photo
        elsif location
          :location
        elsif method
          :method
        elsif default
          :default
        end
      end

    end

    class Option
      YAML.mapping({
        text: {type: String, nilable: false},
        request_location: {type: Bool, default: false},
      })
    end

  end

end
