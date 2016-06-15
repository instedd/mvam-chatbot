require "uri"
require "http/client"

module MvamBot::Geocoding
  class MapzenGeocoder < Geocoder

    CONFIDENCE_THRESHOLD = 0.7
    NAME_MAPPINGS_FILE   = "data/mapzen-mappings.csv"

    @country_name_mappings : Hash(String, String)

    def initialize(@token : String)
      @country_name_mappings = {} of String => String

      # return country names that match our adm0 table when possible
      File.open(NAME_MAPPINGS_FILE, "r") do |file|
        CSV.new(file, headers: true) do |row|
          mapzen_name, adm0_id = row
          adm0_name = MvamBot::Location::Adm0.find(adm0_id.to_i).name
          @country_name_mappings.not_nil![mapzen_name] = adm0_name
        end
      end
    end

    def lookup(query : String, country = nil) : Hash(String, {Float64, Float64})
      begin
        json = request_lookup(query, country)
        return build_lookup_result(json.not_nil!)
      rescue e
        MvamBot.logger.warn("An error occurred obtaining geocoding information from Mapzen for query #{query}")
        MvamBot.logger.warn(e.inspect_with_backtrace)
        return {} of String => {Float64, Float64}
      end
    end

    def reverse(lat, lng) : ReverseGeocodingResult
      begin
        json = request_reverse_lookup(lat, lng)
        return build_reverse_lookup_result(json.not_nil!)
      rescue e
        MvamBot.logger.warn("An error occurred obtaining reverse geocoding information from Mapzen for position (#{lat}, #{lng})")
        MvamBot.logger.warn(e.inspect_with_backtrace)
        return nil
      end
    end

    private def request_lookup(query, country)
      url = "https://search.mapzen.com/v1/search?sources=gn&layers=locality,localadmin&api_key=#{@token}&text=#{URI.escape(query)}"
      url = url + "&boundary.country=#{::MvamBot::Country.find_by_name(country).iso_code}" if country

      HTTP::Client.get(url) do |response|
        return JSON.parse(response.body_io)
      end
    end

    private def build_lookup_result(json)
      result = {} of String => {Float64, Float64}

      json["features"].each do |f|
        next if f["properties"]["confidence"].as_f < CONFIDENCE_THRESHOLD

        l = label(f)
        lng, lat = f["geometry"]["coordinates"]

        result[l] = {lat.as_f, lng.as_f} if l
      end

      result
    end

    private def request_reverse_lookup(lat, lng)
      url = "http://search.mapzen.com/v1/reverse?sources=gn&layers=locality,localadmin&api_key=#{@token}&point.lat=#{lat}&point.lon=#{lng}"

      HTTP::Client.get(url) do |response|
        return JSON.parse(response.body_io)
      end
    end

    private def build_reverse_lookup_result(json)
      if json["features"].size > 0
        feature = json["features"].first
        country_name = feature["properties"]["country"].as_s
        country_name = @country_name_mappings[country_name]? || country_name

        { country_name: country_name, label: label(feature) }
      else
        nil
      end
    end

    private def label(f)
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
