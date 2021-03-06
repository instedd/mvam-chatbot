module MvamBot

  module Location

    def self.clear_cache
      Adm0.clear_cache
      Adm1.clear_cache
      Mkt.clear_cache
    end

    # Returns the name of the deepest location found
    def self.short_description(adm0_id, adm1_id, mkt_id)
      if mkt_id
        return Mkt.find(mkt_id).name
      elsif adm1_id
        return Adm1.find(adm1_id).name
      elsif adm0_id
        return Adm0.find(adm0_id).name
      end
    end

    # Returns the concatenation of names for the ids
    # Example: "Viedma, Rio Negro, Argentina"
    def self.long_description(adm0_id, adm1_id, mkt_id)
      [adm0_id ? Adm0.find(adm0_id).name : nil,
       adm1_id ? Adm1.find(adm1_id).name : nil,
       mkt_id ? Mkt.find(mkt_id).name : nil].compact.reverse.join(", ")
    end

    # Returns the name of the specified location with a clarification based on the specified level
    # Example: "Viedma (Rio Negro, Argentina)"
    def self.description(adm0_id, adm1_id, mkt_id, highest_level = 2)
      names = [(adm0_id && highest_level == 0) ? Adm0.find(adm0_id).name : nil,
               (adm1_id && highest_level <= 1) ? Adm1.find(adm1_id).name : nil,
               mkt_id ? Mkt.find(mkt_id).name : nil].compact.reverse

      case names.size
      when 0 then short_description(adm0_id, adm1_id, mkt_id)
      when 1 then names[0]
      when 2 then "#{names[0]} (#{names[1]})"
      when 3 then "#{names[0]} (#{names[1]}, #{names[2]})"
      end
    end

    record Adm0, id : Int32, name : String do
      @@cache : Hash(Int32, Adm0)?

      def self.clear_cache
        @@cache = nil
      end

      def self.cache
        @@cache ||= self.all.index_by(&.id)
      end

      def self.create(id : Int, name : String)
        DB.db.exec("INSERT INTO locations_adm0 (id, name) VALUES ($1, $2)", id, name)
      end

      def self.all
        self.select("")
      end

      def self.find_by_name(name : String?)
        return nil if !name
        self.select("WHERE name LIKE $1", name).first?
      end

      def self.find(id : Int32)
        # self.select("WHERE id = $1", [id]).first?
        cache[id]
      end

      def self.select(condition, *params)
        DB.db.query_all("SELECT id, name FROM locations_adm0 #{condition}", *params, as: {Int32, String}).map{ |row| self.new(*row) }
      end

      def description
        @name
      end
    end

    record Adm1, id : Int32, name : String, adm0_id : Int32 do
      @@cache : Hash(Int32, Adm1)?

      def self.clear_cache
        @@cache = nil
      end

      def self.cache
        @@cache ||= self.all.index_by(&.id)
      end

      def self.create(id : Int, name : String, adm0_id : Int)
        DB.db.exec("INSERT INTO locations_adm1 (id, name, location_adm0_id) VALUES ($1, $2, $3)", id, name, adm0_id)
      end

      def self.all
        self.select("")
      end

      def self.where_adm0_id(adm0_id : Int32)
        self.select("WHERE location_adm0_id = $1", adm0_id)
      end

      def self.find_by_name(name : String?, adm0_id : Int32)
        return nil if !name
        self.select("WHERE name LIKE $1 AND location_adm0_id = $2", name, adm0_id).first?
      end

      def self.find(id : Int32)
        # self.select("WHERE id = $1", [id]).first?
        cache[id]
      end

      def self.select(condition, *params)
        DB.db.query_all("SELECT id, name, location_adm0_id FROM locations_adm1 #{condition}", *params, as: {Int32, String, Int32}).map{ |row| self.new(*row) }
      end

      def description
        "#{name} (#{Adm0.find(adm0_id).name})"
      end
    end

    record Mkt, id : Int32, name : String, adm1_id : Int32, adm0_id : Int32, lat : Float64?, lng : Float64? do
      @@cache : Hash(Int32, Mkt)?

      def self.clear_cache
        @@cache = nil
      end

      def self.cache
        @@cache ||= self.all.index_by(&.id)
      end

      def self.create(id : Int, name : String, adm1_id : Int, adm0_id : Int)
        DB.db.exec("INSERT INTO locations_mkt (id, name, location_adm1_id, location_adm0_id) VALUES ($1, $2, $3, $4)", id, name, adm1_id, adm0_id)
      end

      def self.create(id : Int, name : String, adm1_id : Int, adm0_id : Int, position : {Float64, Float64})
        lat, lng = position
        DB.db.exec("INSERT INTO locations_mkt (id, name, location_adm1_id, location_adm0_id, position) VALUES ($1, $2, $3, $4, ST_GeomFromText('SRID=4326;POINT(' || $5 || ' ' || $6 || ')'))", id, name, adm1_id, adm0_id, lat, lng)
      end

      def self.all
        self.select("")
      end

      def self.where_adm1_id(adm1_id : Int32)
        self.select("WHERE location_adm1_id = $1", adm1_id)
      end

      def self.find_by_name(name : String?, adm1_id : Int32)
        return nil if !name
        self.select("WHERE name LIKE $1 AND location_adm1_id = $2", name, adm1_id).first?
      end

      def self.find(id : Int32)
        # self.select("WHERE id = $1", [id]).first?
        cache[id]
      end

      def self.select(condition, *params)
        # puts DB.db.query_all("SELECT id, name, location_adm1_id, location_adm0_id, ST_Y(position), ST_X(position) FROM locations_mkt #{condition}", *params, as: {Int32, String, Int32, Int32, Float64|Nil, Float64|Nil})
        DB.db.query_all("SELECT id, name, location_adm1_id, location_adm0_id, ST_Y(position), ST_X(position) FROM locations_mkt #{condition}", *params, as: {Int32, String, Int32, Int32, Float64|Nil, Float64|Nil}).map{ |row| self.new(*row) }
      end

      def self.around(lat : Float64, lng : Float64, count = 5, kilometers = 200) : Array({Location::Mkt, Float64})
        query = "SELECT id, name, location_adm1_id, location_adm0_id, ST_Y(position), ST_X(position), (ST_Distance(position::geography, ST_GeomFromText('SRID=4326;POINT(' || $1 || ' ' || $2 || ')')) / 1000) AS distance"\
                " FROM locations_mkt"\
                " WHERE (ST_Distance(position::geography, ST_GeomFromText('SRID=4326;POINT(' || $1 || ' ' || $2 || ')')) / 1000) < $3"\
                " ORDER BY distance LIMIT $4;"

        DB.db.query_all(query, lng, lat, kilometers, count, as: {Int32, String, Int32, Int32, Float64, Float64, Float64}).map do |row|
          id, name, location_adm1_id, location_adm0_id, lat, lng, distance = row
          {self.new(id, name, location_adm1_id, location_adm0_id, lat, lng), distance}
        end
      end

      def self.set_position(id : String, lat : Float64, lng : Float64)
        DB.db.exec("UPDATE locations_mkt SET position = ST_GeomFromText('SRID=4326;POINT(' || $1 || ' ' || $2 || ')') WHERE id = $3", lng, lat, id)
      end

      def description
        "#{name} (#{Adm1.find(adm1_id).name}, #{Adm0.find(adm0_id).name})"
      end

    end

  end
end
