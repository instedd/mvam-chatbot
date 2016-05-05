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
    price : Float64 do

      def self.create(location_adm0_id : Int, location_adm1_id : Int?, location_mkt_id : Int?, commodity_id : Int, commodity_name : String, currency_id : Int, currency_name : String, unit_id : Int, unit_name : String, month : Int, year : Int, price : Float64)
        DB.exec({Int64}, "INSERT INTO prices (location_adm0_id, location_adm1_id, location_mkt_id, commodity_id, commodity_name, currency_id, currency_name, unit_id, unit_name, month, year, price)
                   VALUES ($1, $2, $3, $4, $5, $6, $7, $8, $9, $10, $11, $12) RETURNING id",
                   [location_adm0_id, location_adm1_id, location_mkt_id, commodity_id, commodity_name, currency_id, currency_name, unit_id, unit_name, month, year, price])
      end

    end

end
