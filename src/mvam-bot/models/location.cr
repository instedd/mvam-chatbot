module MvamBot

  module Location

    record Adm0, id : Int32, name : String do
      def self.create(id : Int, name : String)
        DB.exec("INSERT INTO locations_adm0 (id, name) VALUES ($1, $2)", [id, name])
      end

      def self.all
        DB.exec({Int32, String}, "SELECT id, name FROM locations_adm0").rows.map{ |row| Location::Adm0.new(*row) }
      end
    end

    record Adm1, id : Int32, name : String, adm0_id : Int32 do
      def self.create(id : Int, name : String, adm0_id : Int)
        DB.exec("INSERT INTO locations_adm1 (id, name, location_adm0_id) VALUES ($1, $2, $3)", [id, name, adm0_id])
      end
    end

    record Mkt, id : Int32, name : String, adm1_id : Int32 do
      def self.create(id : Int, name : String, adm1_id : Int)
        DB.exec("INSERT INTO locations_mkt (id, name, location_adm1_id) VALUES ($1, $2, $3)", [id, name, adm1_id])
      end
    end

  end
end
