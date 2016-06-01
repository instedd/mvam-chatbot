module MvamBot

  module Location

    def self.short_description(adm0_id, adm1_id, mkt_id)
      if mkt_id
        return Mkt.find(mkt_id).name
      elsif adm1_id
        return Adm1.find(adm1_id).name
      elsif adm0_id
        return Adm0.find(adm0_id).name
      end
    end

    def self.long_description(adm0_id, adm1_id, mkt_id)
      [adm0_id ? Adm0.find(adm0_id).name : nil,
       adm1_id ? Adm1.find(adm1_id).name : nil,
       mkt_id ? Mkt.find(mkt_id).name : nil].compact.reverse.join(", ")
    end

    record Adm0, id : Int32, name : String do
      @@cache : Hash(Int32, Adm0)?

      def self.cache
        @@cache ||= self.all.index_by(&.id)
      end

      def self.create(id : Int, name : String)
        DB.exec("INSERT INTO locations_adm0 (id, name) VALUES ($1, $2)", [id, name])
      end

      def self.all
        self.select
      end

      def self.find_by_name(name : String?)
        return nil if !name
        self.select("WHERE name LIKE $1", [name]).first?
      end

      def self.find(id : Int32)
        # self.select("WHERE id = $1", [id]).first?
        cache[id]
      end

      def self.select(condition = nil, params = Array(PG::PGValue).new(0))
        DB.exec({Int32, String}, "SELECT id, name FROM locations_adm0 #{condition}", params).rows.map{ |row| self.new(*row) }
      end
    end

    record Adm1, id : Int32, name : String, adm0_id : Int32 do
      @@cache : Hash(Int32, Adm1)?

      def self.cache
        @@cache ||= self.all.index_by(&.id)
      end

      def self.create(id : Int, name : String, adm0_id : Int)
        DB.exec("INSERT INTO locations_adm1 (id, name, location_adm0_id) VALUES ($1, $2, $3)", [id, name, adm0_id])
      end

      def self.all
        self.select
      end

      def self.where_adm0_id(adm0_id : Int32)
        self.select("WHERE location_adm0_id = $1", [adm0_id])
      end

      def self.find_by_name(name : String?, adm0_id : Int32)
        return nil if !name
        self.select("WHERE name LIKE $1 AND location_adm0_id = $2", [name, adm0_id]).first?
      end

      def self.find(id : Int32)
        # self.select("WHERE id = $1", [id]).first?
        cache[id]
      end

      def self.select(condition = nil, params = Array(PG::PGValue).new(0))
        DB.exec({Int32, String, Int32}, "SELECT id, name, location_adm0_id FROM locations_adm1 #{condition}", params).rows.map{ |row| self.new(*row) }
      end
    end

    record Mkt, id : Int32, name : String, adm1_id : Int32 do
      @@cache : Hash(Int32, Mkt)?

      def self.cache
        @@cache ||= self.all.index_by(&.id)
      end

      def self.create(id : Int, name : String, adm1_id : Int)
        DB.exec("INSERT INTO locations_mkt (id, name, location_adm1_id) VALUES ($1, $2, $3)", [id, name, adm1_id])
      end

      def self.all
        self.select
      end

      def self.where_adm1_id(adm1_id : Int32)
        self.select("WHERE location_adm1_id = $1", [adm1_id])
      end

      def self.find_by_name(name : String?, adm1_id : Int32)
        return nil if !name
        self.select("WHERE name LIKE $1 AND location_adm1_id = $2", [name, adm1_id]).first?
      end

      def self.find(id : Int32)
        # self.select("WHERE id = $1", [id]).first?
        cache[id]
      end

      def self.select(condition = nil, params = Array(PG::PGValue).new(0))
        DB.exec({Int32, String, Int32}, "SELECT id, name, location_adm1_id FROM locations_mkt #{condition}", params).rows.map{ |row| self.new(*row) }
      end

      def self.around(lat : Float64, lng : Float64, count = 5, kilometers = 200) : Array({Location::Mkt, Float64})
        query = "SELECT id, name, location_adm1_id, (ST_Distance(position::geography, ST_GeomFromText('SRID=4326;POINT(' || $1 || ' ' || $2 || ')')) / 1000) AS distance"\
                " FROM locations_mkt"\
                " WHERE (ST_Distance(position::geography, ST_GeomFromText('SRID=4326;POINT(' || $1 || ' ' || $2 || ')')) / 1000) < $3"\
                " ORDER BY distance LIMIT $4;"

        DB.exec({Int32, String, Int32, Float64}, query, [lng, lat, kilometers, count]).rows.map do |row|
          id, name, location_adm1_id, distance = row
          {self.new(id, name, location_adm1_id), distance}
        end
      end

      def self.set_position(id : String, lat : Float64, lng : Float64)
        DB.exec("UPDATE locations_mkt SET position = ST_GeomFromText('SRID=4326;POINT(' || $1 || ' ' || $2 || ')') WHERE id = $3", [lng, lat, id])
      end
    end

  end
end
