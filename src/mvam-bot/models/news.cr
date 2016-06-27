module MvamBot

  record News, id : Int64, country_code : String, sent_at : Time? do
    def self.all : Array(MvamBot::News)
      DB.exec({Int64, String, Time|Nil}, "SELECT id, country_code, sent_at FROM news").rows.map { |row| self.new(*row) }
    end

    def self.schedule_delivery(country : MvamBot::Country, message : String)
      DB.exec("INSERT INTO news (country_code, message, sent_at) VALUES ($1, $2, NULL)", [country.iso_code, message])
    end
  end
end
