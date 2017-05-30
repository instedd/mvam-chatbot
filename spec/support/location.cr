module MvamBot::Spec

  # TODO: Cache locations so that they are not retrieved from the database each time!
  class Location

    def self.create_test_locations
      ::MvamBot::Location::Adm0.create(10000000, "Argentina")

      ::MvamBot::Location::Adm1.create(10000000, "Buenos Aires", argentina.id)
      ::MvamBot::Location::Adm1.create(10000001, "Chubut", argentina.id)

      ::MvamBot::Location::Mkt.create(10000000, "Vicente Lopez", buenos_aires.id, argentina.id, {-34.528304, -58.473009})
      ::MvamBot::Location::Mkt.create(10000001, "Olivos", buenos_aires.id, argentina.id, {-34.510636, -58.496459})
      ::MvamBot::Location::Mkt.create(10000002, "Esquel", chubut.id, argentina.id, {-42.909863, -71.314188})

      ::MvamBot::Location.clear_cache
    end

    def self.delete_test_locations
      ::MvamBot::DB.db.exec("DELETE FROM locations_mkt WHERE id >= 10000000")
      ::MvamBot::DB.db.exec("DELETE FROM locations_adm1 WHERE id >= 10000000")
      ::MvamBot::DB.db.exec("DELETE FROM locations_adm0 WHERE id >= 10000000")

      ::MvamBot::Location.clear_cache
    end

    def self.argentina : ::MvamBot::Location::Adm0
      ::MvamBot::Location::Adm0.find_by_name("Argentina").not_nil!
    end

    def self.buenos_aires : ::MvamBot::Location::Adm1
      ::MvamBot::Location::Adm1.find_by_name("Buenos Aires", argentina.id).not_nil!
    end

    def self.vicente_lopez : ::MvamBot::Location::Mkt
      ::MvamBot::Location::Mkt.find_by_name("Vicente Lopez", buenos_aires.id).not_nil!
    end

    def self.chubut : ::MvamBot::Location::Adm1
      ::MvamBot::Location::Adm1.find_by_name("Chubut", argentina.id).not_nil!
    end

    def self.esquel : ::MvamBot::Location::Mkt
      ::MvamBot::Location::Mkt.find_by_name("Esquel", chubut.id).not_nil!
    end
  end


end
