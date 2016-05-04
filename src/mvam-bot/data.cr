require "pg"

module MvamBot

  class Data

    @@db = PG.connect(ENV["PG_URL"])

    # Locations

    def self.create_location_adm0(id : Int, name : String)
      @@db.exec("INSERT INTO locations_adm0 (id, name) VALUES ($1, $2)", [id, name])
    end

    def self.create_location_adm1(id : Int, name : String, adm0_id : Int)
      @@db.exec("INSERT INTO locations_adm1 (id, name, location_adm0_id) VALUES ($1, $2, $3)", [id, name, adm0_id])
    end

    def self.create_location_mkt(id : Int, name : String, adm1_id : Int)
      @@db.exec("INSERT INTO locations_mkt (id, name, location_adm1_id) VALUES ($1, $2, $3)", [id, name, adm1_id])
    end

    def self.create_price(location_adm0_id : Int, location_adm1_id : Int?, location_mkt_id : Int?, commodity_id : Int, commodity_name : String, currency_id : Int, currency_name : String, unit_id : Int, unit_name : String, month : Int, year : Int, price : Float64)
      @@db.exec({Int64}, "INSERT INTO prices (location_adm0_id, location_adm1_id, location_mkt_id, commodity_id, commodity_name, currency_id, currency_name, unit_id, unit_name, month, year, price)
                 VALUES ($1, $2, $3, $4, $5, $6, $7, $8, $9, $10, $11, $12) RETURNING id",
                 [location_adm0_id, location_adm1_id, location_mkt_id, commodity_id, commodity_name, currency_id, currency_name, unit_id, unit_name, month, year, price])
    end

    def self.get_locations_adm0
      @@db.exec({Int32, String}, "SELECT id, name FROM locations_adm0").rows.map{ |row| Location::Adm0.new(*row) }
    end

    # Users

    def self.get_user(id : Int)
      result = @@db.exec({ Int32, String|Nil, String|Nil, Int32|Nil, Int32|Nil, Int32|Nil, Float32|Nil, Float32|Nil },
        "SELECT (id, username, name, location_adm0_id, location_adm1_id, location_mkt_id, location_lat, location_lng)
        FROM users WHERE id = $1", id)
      return nil if result.rows.length == 0
      User.new(*(result[0]))
    end

    def self.create_user(id : Int, username : String?, name : String?)
      @@db.exec("INSERT INTO users (id, username, name) VALUES ($1, $2, $3)", [id, username, name])
      User.new(id, username, name)
    end

  end

end
