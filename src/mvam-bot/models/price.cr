module MvamBot

  record Price,
    id : String,
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

      FIELD_TYPES = {String, Int32, Int32 | Nil, Int32 | Nil, Int32, String, Int32, String, Int32, String, Int32, Int32, Float64 }
      FIELD_NAMES = [ "id", "location_adm0_id", "location_adm1_id", "location_mkt_id", "commodity_id", "commodity_name", "currency_id", "currency_name", "unit_id", "unit_name", "month", "year", "price" ]

      def self.create(id : String, location_adm0_id : Int, location_adm1_id : Int?, location_mkt_id : Int?, commodity_id : Int, commodity_name : String, currency_id : Int, currency_name : String, unit_id : Int, unit_name : String, month : Int, year : Int, price : Float64)
        DB.db.scalar("INSERT INTO prices (id, location_adm0_id, location_adm1_id, location_mkt_id, commodity_id, commodity_name, currency_id, currency_name, unit_id, unit_name, month, year, price)
                   VALUES ($1, $2, $3, $4, $5, $6, $7, $8, $9, $10, $11, $12, $13) RETURNING id",
                   id, location_adm0_id, location_adm1_id, location_mkt_id, commodity_id, commodity_name, currency_id, currency_name, unit_id, unit_name, month, year, price).as(Int64)
      end

      def self.find(id : String)
        row = DB.db.query_one("SELECT #{FIELD_NAMES.join(", ")} FROM prices WHERE id = $1", id, as: FIELD_TYPES)
        return self.new(*row)
      end

      def self.historic_by_id(id : String)
        historic_field_names = FIELD_NAMES.clone
        historic_field_names[0] = "price_id"
        DB.db.query_all("SELECT #{historic_field_names.join(", ")} FROM prices_history WHERE price_id = $1 ORDER BY year DESC, month DESC", [id], as: FIELD_TYPES).map {|r| self.new(*r)}
      end

      def self.search_by_name(name : String?, adm0_id : Int32? = nil, adm1_id : Int32? = nil, mkt_id : Int32? = nil, filter_level : Int32 = 0, limit : Int32? = nil, offset : Int32? = nil)
        search_on_locations("commodity_name LIKE $1", (name ? "#{name}%" : nil), adm0_id, adm1_id, mkt_id, filter_level, limit, offset)
      end

      def self.search_by_commodity_id(commodity_id : Int32?, adm0_id : Int32? = nil, adm1_id : Int32? = nil, mkt_id : Int32? = nil, filter_level : Int32 = 0, limit : Int32? = nil, offset : Int32? = nil)
        search_on_locations("commodity_id = $1", commodity_id, adm0_id, adm1_id, mkt_id, filter_level, limit, offset)
      end

      def self.sample_in_mkt(mkt_id : Int32)
        sample_row = DB.db.query_all("SELECT #{FIELD_NAMES.join(", ")} FROM prices WHERE location_mkt_id = $1", mkt_id, as: FIELD_TYPES).sample
        self.new(*sample_row)
      end

      def self.sample_in_adm0(adm0_id : Int32)
        sample_row = DB.db.query_all("SELECT #{FIELD_NAMES.join(", ")} FROM prices WHERE location_adm0_id = $1", adm0_id, as: FIELD_TYPES).sample
        self.new(*sample_row)
      end

      def self.sample
        sample_row = DB.db.query_all("SELECT #{FIELD_NAMES.join(", ")} FROM prices TABLESAMPLE SYSTEM(10) LIMIT 1", as: FIELD_TYPES).sample
        self.new(*sample_row)
      end

      def self.commodity_names
        DB.db.query_all("SELECT DISTINCT(commodity_name) FROM prices;", as: {String})
      end

      private def self.search_on_locations(condition : String? = nil, value = nil, adm0_id : Int32? = nil, adm1_id : Int32? = nil, mkt_id : Int32? = nil, filter_level : Int32 = 0, limit : Int32? = nil, offset : Int32? = nil)
        DB.query_with_builder("SELECT #{FIELD_NAMES.join(", ")} FROM prices", limit, offset, as: FIELD_TYPES) do |builder|
          builder.add_condition_unless_nil_param(condition, value) if condition
          builder.add_condition_unless_nil_param("location_adm0_id = $1", adm0_id) if filter_level >= 0
          builder.add_condition_unless_nil_param("location_adm1_id = $1", adm1_id) if filter_level >= 1
          builder.add_condition_unless_nil_param("location_mkt_id = $1", mkt_id) if filter_level >= 2
          builder.add_sorting_unless_nil_param("(location_mkt_id != $1)", mkt_id, "(location_mkt_id IS NULL) DESC")
          builder.add_sorting_unless_nil_param("(location_adm1_id != $1)", adm1_id, "(location_adm1_id IS NULL) DESC")
          builder.add_sorting_unless_nil_param("(location_adm0_id != $1)", adm0_id, "(location_adm0_id IS NULL) DESC")
        end.map {|r| self.new(*r)}
      end

      def self.description(prices, user, format = nil)
        # Empty response if there are no prices
        if prices.empty?
          return ""

        # If there is a result for the specific market where the user is, return it
        elsif prices[0].location_mkt_id && prices[0].location_mkt_id == user.location_mkt_id
          return prices[0].long_description(format: format, include_trend: true)

        # If the results are for the same adm1 location, return those
        elsif prices[0].location_adm1_id && prices[0].location_adm1_id == user.location_adm1_id
          adm1_id = prices[0].location_adm1_id.not_nil!
          descriptions = prices.select{|p| p.location_adm1_id}.first(5).map{|p| p.short_description(format: format)}
          return "Prices for #{prices[0].commodity_name} in #{Location::Adm1.find(adm1_id).name} are #{descriptions.join(", ")}."

        # Otherwise, send some country-wide prices
        else
          descriptions = prices.first(5).map{|p| p.short_description(format: format, location_level: 1)}
          return "Prices for #{prices[0].commodity_name} in #{Location::Adm0.find(prices[0].location_adm0_id).name} are #{descriptions.join(", ")}."
        end
      end

      def self.trend_description(history, format = nil)
        return nil if history.size < 3

        start = history[0]
        last = history[2]

        last_price = (history[1].price + history[2].price) / 2.0

        price_trend = ((start.price / last_price - 1) * 100).round.to_i
        price_trend_description = if price_trend.abs == 0
          "has not changed"
        elsif price_trend > 0
          "has a #{price_trend}% upward trend"
        else
          "has a #{price_trend.abs}% downward trend"
        end

        price_trend_description = (format == :markdown) ? "*#{price_trend_description}*" : price_trend_description
        price_timespan_description = price_trend.abs != 0 ? "." : " since #{last.time_description}."
        return "The price #{price_trend_description}#{price_timespan_description}"
      end

      def trend_description(format = nil)
        history = Price.historic_by_id(self.id)
        Price.trend_description(history, format)
      end

      def long_description(format = nil, include_trend = false, location_level = 2)
        location = Location.description(location_adm0_id, location_adm1_id, location_mkt_id, highest_level: location_level)
        trend = include_trend ? trend_description(format) : nil
        trend = trend ? "\n\n#{trend}" : ""
        "#{commodity_name} is #{price_description(format)} in #{location} as of #{time_description}.#{trend}"
      end

      def short_description(format = nil, location_level = 2)
        location = Location.description(location_adm0_id, location_adm1_id, location_mkt_id, highest_level: location_level)
        "#{price_description(format)} in #{location}"
      end

      def price_description(format = nil)
        description = "#{price} #{currency_name} per #{unit_name}"
        (format == :markdown) ? "*#{description}*" : description
      end

      def time_description
        Time.new(year, month, 1).to_s(year == Time.now.year ? "%B" : "%B %Y")
      end

      def short_commodity_name
        commodity_name.split(" ").first
      end

    end

end
