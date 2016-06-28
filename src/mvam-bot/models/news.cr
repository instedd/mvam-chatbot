module MvamBot

  record News, id : Int64, country_code : String, created_at : Time? do
    def self.all : Array(MvamBot::News)
      DB.exec({Int64, String, Time|Nil}, "SELECT id, country_code, created_at FROM news").rows.map { |row| self.new(*row) }
    end

    def self.subscribe(country, user)
      DB.exec("INSERT INTO news_subscriptions (user_id, country_code) values ($1, $2)", [user.id, country.iso_code])
    end

    def self.subscribed_users(country : MvamBot::Country)
      DB.exec({Int32}, "SELECT user_id FROM news_subscriptions WHERE country_code = $1", [country.iso_code]).rows.map { |row| row[0] }
    end

    def self.schedule_delivery(country : MvamBot::Country, message : String) : News
      timestamp = Time.new
      id = DB.exec({Int64}, "INSERT INTO news (country_code, message, created_at) VALUES ($1, $2, $3) RETURNING id", [country.iso_code, message, timestamp]).rows.first[0]

      self.subscribed_users(country).each do |user_id|
        DB.exec("INSERT INTO news_deliveries (news_id, user_id, created_at) VALUES ($1, $2, $3)", [id, user_id, timestamp])
      end

      self.new(id, country.iso_code, timestamp)
    end

    def self.pending_deliveries(news : MvamBot::News)
      DB.exec("SELECT count(*) FROM news_deliveries WHERE news_id = $1", [news.id]).rows.first[0]
    end
  end
end
