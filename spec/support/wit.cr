module MvamBot::Spec

  module Wit

    def entities(hash)
      result = Hash(String, Array(JSON::Any)).new
      hash.each do |key, value|
        result[key] = [JSON.parse({"confidence" => 0.9, "value" => value}.to_json)]
      end
      result
    end

  end

end
