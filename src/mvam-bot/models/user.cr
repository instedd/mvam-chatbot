module MvamBot
  class User

    @id : Int32
    @username : String?
    @name : String?
    @location_adm0_id : Int32?
    @location_adm1_id : Int32?
    @location_mkt_id : Int32?
    @location_lat : Float32?
    @location_lng : Float32?

    def initialize(@id : Int32)
    end

    def initialize(@id : Int32,
                   @username : String?,
                   @name : String?)
    end

    def initialize(@id : Int32,
                   @username : String?,
                   @name : String?,
                   @location_adm0_id : Int32?,
                   @location_adm1_id : Int32?,
                   @location_mkt_id : Int32?,
                   @location_lat : Float32?,
                   @location_lng : Float32?)
    end

    def self.find(id : Int)
      result = DB.exec({ Int32, String|Nil, String|Nil, Int32|Nil, Int32|Nil, Int32|Nil, Float32|Nil, Float32|Nil },
        "SELECT (id, username, name, location_adm0_id, location_adm1_id, location_mkt_id, location_lat, location_lng)
        FROM users WHERE id = $1", id)
      return nil if result.rows.length == 0
      User.new(*(result[0]))
    end

    def self.create(id : Int, username : String?, name : String?)
      DB.exec("INSERT INTO users (id, username, name) VALUES ($1, $2, $3)", [id, username, name])
      User.new(id, username, name)
    end

  end
end
