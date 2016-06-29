module MvamBot::Spec

  module Factory

    # Bread per KG in Algiers
    def self.price(price = 50.0, location_adm0_id = 4, location_adm1_id = 344, location_mkt_id = 1794, commodity_id = 55, commodity_name = "Bread", currency_id = 87, currency_name = "AFN", unit_id = 5, unit_name = "KG", month = 4, year = 2015)
      id = "#{location_adm0_id}.#{location_adm1_id}.#{location_mkt_id}.#{commodity_id}"
      MvamBot::Price.new(id, location_adm0_id, location_adm1_id, location_mkt_id, commodity_id, commodity_name, currency_id, currency_name, unit_id, unit_name, month, year, price)
    end

    module DB

      # Algeria, Alger, Algiers
      def self.user_with_location(id = 100000000, username = "jdoe", name = "John Doe", location_adm0_id = 4, location_adm1_id = 344, location_mkt_id = 1794, conversation_step = nil)
        MvamBot::User.create(id, username, name, location_adm0_id: location_adm0_id, location_adm1_id: location_adm1_id, location_mkt_id: location_mkt_id, conversation_step: conversation_step)
      end

      # Algeria, Alger, Algiers
      def self.user(*traits, id = 100000001, username = nil, name = "John Doe", location_adm0_id = nil, location_adm1_id = nil, location_mkt_id = nil, conversation_step = nil, conversation_session_id = nil, conversation_at = nil, location_lat = nil, location_lng = nil, gps_timestamp = nil, survey_at = nil)
        if traits.includes?(:with_location)
          location_adm0_id ||= 4
          location_adm1_id ||= 344
          location_mkt_id ||= 1794
        end

        if traits.includes?(:with_conversation)
          conversation_session_id ||= "TEST_SESSION_ID"
          conversation_at ||= Time.utc_now
        end

        MvamBot::User.create(
          id: id,
          username: username || "jdoe-#{id}",
          name: name,
          location_adm0_id: location_adm0_id,
          location_adm1_id: location_adm1_id,
          location_mkt_id: location_mkt_id,
          location_lat: location_lat,
          location_lng: location_lng,
          gps_timestamp: gps_timestamp,
          conversation_step: conversation_step,
          conversation_session_id: conversation_session_id,
          conversation_at: conversation_at,
          survey_at: survey_at
        )
      end

    end

  end

end
