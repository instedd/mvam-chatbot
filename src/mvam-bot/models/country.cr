require "csv"

module MvamBot
  record Country, name : String, iso_code : String, currency_code : String do

    @@countries : Hash(String, Country)?
    @@whitelist : Array(String)?

    def self.all
      all_by_name.values
    end

    def self.all_names
      all_by_name.keys
    end

    def self.find_by_name(country_name)
      all_by_name[country_name]
    end

    def self.exists?(country_name)
      !all_by_name[country_name]?.nil?
    end

    def self.find_by_code(iso_code)
      all_by_name.values.find { |c| c.iso_code == iso_code }
    end

    def self.code_exists?(iso_code)
      !find_by_code(iso_code).nil?
    end

    private def self.all_by_name
      if !@@countries
        @@countries = {} of String => Country

        CSV.new({{ `cat data/countries.csv`.stringify }}, headers: true) do |row|
          name,iso_code,currency_code,_ = row
          country = Country.new(name, iso_code, currency_code)

          if matches_adm0?(country) || include?(country)
            @@countries.not_nil![name] = country
          end
        end
      end

      @@countries.not_nil!
    end

    private def self.matches_adm0?(country)
      !MvamBot::Location::Adm0.find_by_name(country.name).nil?
    end

    private def self.include?(country)
      return true if ENV["TEST"]?

      @@whitelist ||= if setting = ENV["COUNTRIES_WHITELIST"]?
                        setting.split(",").map(&.strip)
                      else
                        [] of String
                      end

      @@whitelist.not_nil!.includes? country.iso_code
    end
  end
end
