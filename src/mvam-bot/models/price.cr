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

      FIELD_TYPES = {Int64, Int32, Int32 | Nil, Int32 | Nil, Int32, String, Int32, String, Int32, String, Int32, Int32, Float64 }
      FIELD_NAMES = [ "id", "location_adm0_id", "location_adm1_id", "location_mkt_id", "commodity_id", "commodity_name", "currency_id", "currency_name", "unit_id", "unit_name", "month", "year", "price" ]

      def self.create(location_adm0_id : Int, location_adm1_id : Int?, location_mkt_id : Int?, commodity_id : Int, commodity_name : String, currency_id : Int, currency_name : String, unit_id : Int, unit_name : String, month : Int, year : Int, price : Float64)
        DB.exec({Int64}, "INSERT INTO prices (location_adm0_id, location_adm1_id, location_mkt_id, commodity_id, commodity_name, currency_id, currency_name, unit_id, unit_name, month, year, price)
                   VALUES ($1, $2, $3, $4, $5, $6, $7, $8, $9, $10, $11, $12) RETURNING id",
                   [location_adm0_id, location_adm1_id, location_mkt_id, commodity_id, commodity_name, currency_id, currency_name, unit_id, unit_name, month, year, price])
      end

      def self.search_by_name(name : String?, adm0_id : Int32? = nil, adm1_id : Int32? = nil, mkt_id : Int32? = nil, filter_level : Int32 = 2, limit : Int32? = nil, offset : Int32? = nil)
        # TODO: Check compiler error when naming limit: limit, offset: offset in the call below
        DB.exec_with_builder(FIELD_TYPES, "SELECT #{FIELD_NAMES.join(", ")} FROM prices", limit, offset) do |builder|
          builder.add_condition_unless_nil_param("commodity_name LIKE $1", (name ? "#{name}%" : nil))
          builder.add_condition_unless_nil_param("location_adm0_id = $1", adm0_id) if filter_level >= 0
          builder.add_condition_unless_nil_param("location_adm1_id = $1", adm1_id) if filter_level >= 1
          builder.add_condition_unless_nil_param("location_mkt_id = $1", mkt_id) if filter_level >= 2
          builder.add_sorting_unless_nil_param("(location_mkt_id != $1)", mkt_id, "(location_mkt_id IS NULL) DESC")
          builder.add_sorting_unless_nil_param("(location_adm1_id != $1)", adm1_id, "(location_adm1_id IS NULL) DESC")
          builder.add_sorting_unless_nil_param("(location_adm0_id != $1)", adm0_id, "(location_adm0_id IS NULL) DESC")
        end.rows.map {|r| self.new(*r)}
      end

      def long_description(format = nil)
        time = Time.new(year, month, 1).to_s(year == Time.now.year ? "%B" : "%B %Y")
        location = Location.short_description(location_adm0_id, location_adm1_id, location_mkt_id)
        "#{commodity_name} is #{price_description(format)} in #{location} as of #{time}."
      end

      def short_description(format = nil)
        location = Location.short_description(location_adm0_id, location_adm1_id, location_mkt_id)
        "#{price_description(format)} in #{location}"
      end

      def price_description(format = nil)
        description = "#{price} #{currency_name} per #{unit_name}"
        return (format == :markdown) ? "*#{description}*" : description
      end

    end

end
