require "uri"
require "http/client"

module MvamBot
  class Geocoder

    def initialize(@token : String?)
      if !@token
        MvamBot.logger.warn "No MapQuest token was provided, geocoding service will not be available."
      end
    end

    def lookup(query : String) : Hash(String, {Float64, Float64})
      return {} of String => {Float64, Float64} unless @token

      begin
        json = make_request(query)
        return build_result(json.not_nil!)
      rescue e
        MvamBot.logger.warn("An error occurred obtaining geocoding information from MapQuest for query #{query}")
        MvamBot.logger.warn(e.inspect_with_backtrace)
        return {} of String => {Float64, Float64}
      end
    end

    def make_request(query)
      url = "https://open.mapquestapi.com/geocoding/v1/address?key=#{@token.not_nil!}&location=#{URI.escape(query)}"

      HTTP::Client.get(url) do |response|
        return JSON.parse(response.body_io)
      end
    end

    def build_result(json)
      result = {} of String => {Float64, Float64}

      json["results"][0]["locations"].each do |l|
        name = readable_name(l)
        latlng = l["latLng"]
        lat = latlng["lat"].as_f
        lng = latlng["lng"].as_f
        result[name] = {lat, lng}
      end

      result
    end

    def readable_name(location)
      names = administrative_hierarchy(location)
      names = names.uniq
      names = names[0..1] + [names.last] if names.size > 3
      names.join(",")
    end

    def administrative_hierarchy(location)
      [6,5,4,3,2,1].flat_map do |level|
        n = location["adminArea#{level}"]?
        if n && !n.as_s.empty?
          [n.as_s]
        else
          [] of String
        end
      end
    end

  end
end
