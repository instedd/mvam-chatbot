module MvamBot
  module Geocoding
    abstract class Geocoder
      abstract def lookup(query : String, country_code : String?) : Hash(String, {Float64, Float64})
      abstract def reverse(lat : Float64, lng : Float64) : String?
    end

    def self.init
      if mapzen_token = MvamBot::Config.mapzen_token
        Geocoding::MapzenGeocoder.new(mapzen_token)
      else
        NullGeocoder.new
      end
    end

    class NullGeocoder < Geocoder
      def lookup(query, country)
        MvamBot.logger.warn "No geocoding service was configured. Geocoding service will not be available."
        {} of String => {Float64, Float64}
      end

      def reverse(lat, lng)
        MvamBot.logger.warn "No geocoding service was configured. Geocoding service will not be available."
        nil
      end
    end
  end
end
