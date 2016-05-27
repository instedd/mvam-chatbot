module MvamBot::Spec

  module Factory

    def self.user(id = 100000000, username = "jdoe", name = "John Doe")
      MvamBot::User.create(id, username, name)
    end

    # Algeria, Alger, Algiers
    def self.user_with_location(id = 100000000, username = "jdoe", name = "John Doe", location_adm0_id = 4, location_adm1_id = 344, location_mkt_id = 1794)
      MvamBot::User.create(id, username, name, location_adm0_id: location_adm0_id, location_adm1_id: location_adm1_id, location_mkt_id: location_mkt_id)
    end

  end

end
