require "csv"
require "http/client"

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

  adm0s = Set(Int32).new
  adm1s = Set(Int32).new
  mkts =  Set(Int32).new

  def import_csv
    File.open(FILE_PATH, "r") do |file|
      csv = CSV.new(file, headers: true)
      while csv.next
        process_row(csv)
      end
    end
  end

  def process_row(csv)
    adm0_id, adm1_id, mkt_id = ["adm0_id", "adm1_id", "mkt_id"].map { |key| csv[key].to_i }

    import_adm0(adm0_id, csv["adm0_name"]) if !adm0s.includes?(adm0_id)
    import_adm1(adm1_id, csv["adm1_name"]) if !adm1s.includes?(adm1_id)
    import_mkt(mkt_id, csv["mkt_name"]) if !mkts.includes?(mkt_id)
    
  end

end

download_prices_csv if !File.exists?(FILE_PATH)
