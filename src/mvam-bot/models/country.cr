require "csv"

module MvamBot
  record Country, name : String, iso_code : String, currency_code : String do

    @@countries : Hash(String, Country) = load

    def self.all
      @@countries.values
    end

    def self.all_names
      @@countries.keys
    end

    def self.find_by_name(country_name)
      @@countries[country_name]
    end

    def self.exists?(country_name)
      !@@countries[country_name]?.nil?
    end

    def self.load
      result = {} of String => Country

      File.open("data/countries.csv", "r") do |file|
        CSV.new(file, headers: true) do |row|
          name,iso_code,currency_code,_ = row
          result[name] = Country.new(name, iso_code, currency_code)
        end
      end
      result
    end
  end
end
