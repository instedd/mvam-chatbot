module MvamBot
  record Currency, code : String, name : String, country : Country do

    @@currencies_by_code : Hash(String, Currency)?
    @@currencies_by_country : Hash(Country, Currency)?

    def self.all
      currencies_by_code.not_nil!.values
    end

    def self.find_by_code(code)
      currencies_by_code.not_nil![code]
    end

    def self.find_by_country(country)
      currencies_by_country.not_nil![country]
    end

    private def self.currencies_by_code
      load_from_csv if @@currencies_by_code.nil?
      @@currencies_by_code
    end

    private def self.currencies_by_country
      load_from_csv if @@currencies_by_country.nil?
      @@currencies_by_country
    end

    private def self.load_from_csv
      @@currencies_by_code = {} of String => Currency
      @@currencies_by_country = {} of Country => Currency

      CSV.new({{ `cat data/countries.csv`.stringify }}, headers: true) do |row|
        country_name,_,code,name = row
        if Country.exists?(country_name)
          country = Country.find_by_name(country_name)
          currency = Currency.new(code, name, country)
          @@currencies_by_code.not_nil![code] = currency
          @@currencies_by_country.not_nil![country] = currency
        end
      end
    end

  end
end
