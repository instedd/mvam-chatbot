module MvamBot

  record Price,
    id : Int64,
    location_adm0_id : Int32,
    location_adm1_id : Int32?,
    location_mkt_id : Int32?,
    commodity_id : Int32,
    commodity_name : String,
    currency_id : Int32,
    currency_name : String,
    unit_id : Int32,
    unit_name : String,
    month : Int32,
    year : Int32,
    price : Float64

end
