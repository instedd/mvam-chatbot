module MvamBot::Spec

  module Factory

    # Bread per KG in Algiers
    def self.price(price = 50.0, location_adm0_id = 4, location_adm1_id = 344, location_mkt_id = 1794, commodity_id = 55, commodity_name = "Bread", currency_id = 87, currency_name = "AFN", unit_id = 5, unit_name = "KG", month = 4, year = 2015)
      id = "#{location_adm0_id}.#{location_adm1_id}.#{location_mkt_id}.#{commodity_id}"
      MvamBot::Price.new(id, location_adm0_id, location_adm1_id, location_mkt_id, commodity_id, commodity_name, currency_id, currency_name, unit_id, unit_name, month, year, price)
    end

    module DB

      def self.user(id = 100000000, username = "jdoe", name = "John Doe", conversation_step = nil)
        MvamBot::User.create(id, username, name, conversation_step: conversation_step)
      end

      # Algeria, Alger, Algiers
      def self.user_with_location(id = 100000000, username = "jdoe", name = "John Doe", location_adm0_id = 4, location_adm1_id = 344, location_mkt_id = 1794, conversation_step = nil)
        MvamBot::User.create(id, username, name, location_adm0_id: location_adm0_id, location_adm1_id: location_adm1_id, location_mkt_id: location_mkt_id, conversation_step: conversation_step)
      end

    end

  end

end
