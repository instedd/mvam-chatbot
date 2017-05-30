module MvamBot::Spec

  module Wit

    def entities(hash)
      result = Hash(String, Array(JSON::Any)).new
      hash.each do |key, value|
        result[key] = [JSON.parse({"confidence" => 0.9, "value" => value}.to_json)]
      end
      result
    end

    def response(hash = Hash(String, String).new)
      ::Wit::MessageResponse.from_json({msg_id: "MSG1", _text: "", entities: entities(hash)}.to_json)
    end

  end

end
