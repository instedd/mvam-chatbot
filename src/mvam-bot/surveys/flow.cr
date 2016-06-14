require "yaml"

module MvamBot

  module Surveys

    class Flow
      YAML.mapping({
        states: { type: Hash(String, FlowState), converter: FlowStates },
        data: { type: Array(String), key: "survey_data" },
        common_transitions: { type: Array(FlowTransition) }
      }, strict: true)

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

      class Clarification
        YAML.mapping({
          say: { type: String, nilable: true },
          options: { type: Array(Option), nilable: true },
          options_from: { type: String, nilable: true },
        }, strict: true)

        def initialize
        end
      end

      YAML.mapping({
        dummy: { type: Bool, nilable: true },
        say: { type: String, nilable: true },
        transitions: { type: Array(FlowTransition), default: Array(FlowTransition).new },
        initial: { type: Bool, default: false },
        final: { type: Bool, default: false },
        options: { type: Array(Option), nilable: true },
        options_from: { type: String, nilable: true },
        transient: { type: Bool, default: false },
        clarification: { type: Clarification, default: Clarification.new }
      }, strict: true)

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
        value: { type: String, nilable: true },
        intent: { type: String, nilable: true },
        message: { type: Array(String), nilable: true },
        message_from: { type: String, nilable: true },
        default: { type: Bool, default: false },
        store: { type: String, nilable: true },
        photo: { type: Bool, default: false },
        location: { type: Bool, default: false },
        method: { type: String, nilable: true },
        say: { type: String, nilable: true },
        failure: { type: Bool, default: false },
      }, strict: true)

      def kind
        if message
          :message
        elsif message_from
          :message_from
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
        elsif failure
          :failure
        end
      end

      def inspect
        case kind
        when :message
          "{message, #{message}}"
        when :message_from
          "{message_from, #{message_from}}"
        when :intent
          "{intent, #{intent}}"
        when :entity
          "{entity, #{entity}}"
        when :photo
          "{photo, #{photo}}"
        when :location
          "{location, #{location}}"
        when :method
          "{method, #{method}}"
        when :default
          "{default}"
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
