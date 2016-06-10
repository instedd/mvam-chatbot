require "uri"
require "http/client"

module MvamBot::Geocoding
  class MapzenGeocoder

    CONFIDENCE_THRESHOLD = 0.7

    def initialize(@token : String)
    end

    def lookup(query : String, country = nil) : Hash(String, {Float64, Float64})
      begin
        json = make_request(query, country)
        return build_result(json.not_nil!)
      rescue e
        MvamBot.logger.warn("An error occurred obtaining geocoding information from MapQuest for query #{query}")
        MvamBot.logger.warn(e.inspect_with_backtrace)
        return {} of String => {Float64, Float64}
      end
    end

    def make_request(query, country)
      url = "https://search.mapzen.com/v1/search?layers=locality,localadmin&api_key=#{@token.not_nil!}&text=#{URI.escape(query)}"
      url = url + "&boundary.country=#{::MvamBot::Country.find_by_name(country).iso_code}" if country

      HTTP::Client.get(url) do |response|
        return JSON.parse(response.body_io)
      end
    end

    def build_result(json)
      result = {} of String => {Float64, Float64}

      json["features"].each do |f|
        next if f["properties"]["confidence"].as_f < CONFIDENCE_THRESHOLD

        l = label(f)
        lat, lng = f["geometry"]["coordinates"]

        result[l] = {lat.as_f, lng.as_f} if l
      end

      result
    end

    def label(f)
      props = f["properties"]
      name = props["name"]
      region = props["region"]
      if name && region
        "#{name.as_s}, #{region.as_s}"
      elsif name
        name.as_s
      else
        props["label"].as_s
      end
    end
  end
end
