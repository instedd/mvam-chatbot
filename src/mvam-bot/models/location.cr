module MvamBot

  module Location

    record Adm0, id : Int32, name : String do
      def self.create(id : Int, name : String)
        DB.exec("INSERT INTO locations_adm0 (id, name) VALUES ($1, $2)", [id, name])
      end

      def self.all
        DB.exec({Int32, String}, "SELECT id, name FROM locations_adm0").rows.map{ |row| Location::Adm0.new(*row) }
      end

      def self.find_by_name(name : String?)
        return nil if !name
        DB.exec({Int32, String}, "SELECT id, name FROM locations_adm0 WHERE name LIKE $1", [name]).rows.map{ |row| Location::Adm0.new(*row) }.first?
      end
    end

    record Adm1, id : Int32, name : String, adm0_id : Int32 do
      def self.create(id : Int, name : String, adm0_id : Int)
        DB.exec("INSERT INTO locations_adm1 (id, name, location_adm0_id) VALUES ($1, $2, $3)", [id, name, adm0_id])
      end

      def self.where_adm0_id(adm0_id : Int32)
        DB.exec({Int32, String, Int32}, "SELECT id, name, location_adm0_id FROM locations_adm1 WHERE location_adm0_id = $1", [adm0_id]).rows.map{ |row| Location::Adm1.new(*row) }
      end

      def self.find_by_name(name : String?, adm0_id : Int32)
        return nil if !name
        DB.exec({Int32, String, Int32}, "SELECT id, name, location_adm0_id FROM locations_adm1 WHERE name LIKE $1 AND location_adm0_id = $2", [name, adm0_id]).rows.map{ |row| Location::Adm1.new(*row) }.first?
      end
    end

    record Mkt, id : Int32, name : String, adm1_id : Int32 do
      def self.create(id : Int, name : String, adm1_id : Int)
        DB.exec("INSERT INTO locations_mkt (id, name, location_adm1_id) VALUES ($1, $2, $3)", [id, name, adm1_id])
      end

      def self.where_adm1_id(adm1_id : Int32)
        DB.exec({Int32, String, Int32}, "SELECT id, name, location_adm1_id FROM locations_mkt WHERE location_adm1_id = $1", [adm1_id]).rows.map{ |row| Location::Mkt.new(*row) }
      end

      def self.find_by_name(name : String?, adm1_id : Int32)
        return nil if !name
        DB.exec({Int32, String, Int32}, "SELECT id, name, location_adm1_id FROM locations_mkt WHERE name LIKE $1 AND location_adm1_id = $2", [name, adm1_id]).rows.map{ |row| Location::Mkt.new(*row) }.first?
      end
    end

  end
end
