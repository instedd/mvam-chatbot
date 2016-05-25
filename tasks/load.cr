require "csv"
require "http/client"

require "../src/mvam-bot/models/*"
require "../src/mvam-bot/handlers/*"
require "../src/mvam-bot/wit/*"
require "../src/mvam-bot/*"


DATA_URL = "http://vam.wfp.org/sites/data/WFPVAM_FoodPrices_8-4-2016.csv"
FILE_PATH = "prices.csv"

def download_prices_csv
  HTTP::Client.get(DATA_URL) do |response|
    File.open(FILE_PATH, "w") do |file|
      IO.copy(response.body_io, file)
    end
  end
end

class CsvProcessor

  @adm0s = Set(Int32).new
  @adm1s = Set(Int32).new
  @mkts =  Set(Int32).new
  @previous : MvamBot::Price | Nil

  def import_csv
    File.open(FILE_PATH, "r", encoding: "latin1") do |file|
      csv = CSV.new(file, headers: true)
      while csv.next
        process_row(csv)
      end
    end
  end

  def process_row(csv)
    price = MvamBot::Price.new(0i64,
      csv["adm0_id"].to_i,
      csv["adm1_id"].to_i,
      csv["mkt_id"].to_i,
      csv["cm_id"].to_i,
      csv["cm_name"],
      csv["cur_id"].to_i,
      csv["cur_name"],
      csv["um_id"].to_i,
      csv["um_name"],
      csv["mp_month"].to_i,
      csv["mp_year"].to_i,
      csv["mp_price"].to_f
    )

    import_adm0(price.location_adm0_id, csv["adm0_name"]) if !@adm0s.includes?(price.location_adm0_id)
    import_adm1(price.location_adm1_id, csv["adm1_name"], price.location_adm0_id) if price.location_adm1_id && !@adm1s.includes?(price.location_adm1_id.not_nil!)
    import_mkt(price.location_mkt_id, csv["mkt_name"], price.location_adm1_id) if price.location_mkt_id && !@mkts.includes?(price.location_mkt_id.not_nil!)

    # Compare mkt_id and cm_id
    if @previous == nil
      @previous = price
      return
    elsif (previous = @previous.not_nil!) && { previous.location_mkt_id, previous.commodity_id } == { price.location_mkt_id, price.commodity_id }
      @previous = price
      return
    else
      import_row(previous)
      @previous = price
    end
  end

  def import_row(price)
    puts "Inserting price for #{price.commodity_name} in #{price.location_adm0_id}.#{price.location_adm1_id}.#{price.location_mkt_id} on #{price.month}/#{price.year}"

    MvamBot::Price.create(
      price.location_adm0_id,
      price.location_adm1_id == 0 ? nil : price.location_adm1_id,
      price.location_adm1_id == 0 ? nil : price.location_mkt_id,
      price.commodity_id,
      price.commodity_name,
      price.currency_id,
      price.currency_name,
      price.unit_id,
      price.unit_name,
      price.month,
      price.year,
      price.price
    )
  end

  def import_adm0(id, name)
    @adm0s.add(id)
    MvamBot::Location::Adm0.create(id, name)
  end

  def import_adm1(id, name, adm0_id)
    return if id == 0 # Do not store "national average" as location
    @adm1s.add(id.not_nil!)
    MvamBot::Location::Adm1.create(id.not_nil!, name, adm0_id)
  end

  def import_mkt(id, name, adm1_id)
    return if adm1_id == 0 # Do not store "national average" as location
    @mkts.add(id.not_nil!)
    MvamBot::Location::Mkt.create(id.not_nil!, name, adm1_id.not_nil!)
  end

end

def main
  download_prices_csv if !File.exists?(FILE_PATH)
  CsvProcessor.new.import_csv
end

main
