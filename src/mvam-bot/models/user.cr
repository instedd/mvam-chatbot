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

  end
end
