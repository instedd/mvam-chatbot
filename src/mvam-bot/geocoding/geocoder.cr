module MvamBot
  module Geocoding
    abstract class Geocoder
      abstract def lookup(query, country) : Hash(String, {Float64, Float64})
    end

    def self.init
      if mapzen_token = MvamBot::Config.mapzen_token
        Geocoding::MapzenGeocoder.new(mapzen_token)
      elsif mapquest_token = MvamBot::Config.mapquest_token
        Geocoding::MapQuestGeocoder.new(mapquest_token)
      else
        NullGeocoder.new
      end
    end

    class NullGeocoder < Geocoder
      def lookup(query, country)
        MvamBot.logger.warn "No geocoding service was configured. Geocoding service will not be available."
        {} of String => {Float64, Float64}
      end
    end
  end
end
