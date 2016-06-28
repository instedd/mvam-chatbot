module MvamBot

  module News
    record Content, id : Int64, country_code : String, message : String, created_at : Time?
    record Delivery, id : Int64, content_id : Int32, user_id : Int32

    def self.subscribe(country, user)
      DB.exec("INSERT INTO news_subscriptions (user_id, country_code) values ($1, $2)", [user.id, country.iso_code])
    end

    def self.subscribed_users(country : MvamBot::Country)
      DB.exec({Int32}, "SELECT user_id FROM news_subscriptions WHERE country_code = $1", [country.iso_code]).rows.map { |row| row[0] }
    end

    def self.subscriptions_per_country
      rows = DB.exec({String, Int64}, "SELECT country_code, count(1) FROM news_subscriptions GROUP BY country_code").rows
      ({} of String => Int64).tap do |ret|
        rows.each do |row|
          country_code, count = row
          ret[country_code] = count
        end
      end
    end

    def self.schedule_delivery(country : MvamBot::Country, message : String) : Content
      timestamp = Time.new
      id = DB.exec({Int64}, "INSERT INTO news_contents (country_code, message, created_at) VALUES ($1, $2, $3) RETURNING id", [country.iso_code, message, timestamp]).rows.first[0]

      self.subscribed_users(country).each do |user_id|
        DB.exec("INSERT INTO news_deliveries (content_id, user_id, created_at) VALUES ($1, $2, $3)", [id, user_id, timestamp])
      end

      Content.new(id, country.iso_code, message, timestamp)
    end

    def self.pending_deliveries(content : Content)
      DB.exec("SELECT count(*) FROM news_deliveries WHERE content_id = $1", [content.id]).rows.first[0]
    end

    def self.dequeue_delivery
      rows = DB.exec({Int64, Int32, Int32}, "DELETE FROM news_deliveries WHERE id = (SELECT MIN(id) FROM news_deliveries) RETURNING id, content_id, user_id").rows

      if rows.empty?
        nil
      else
        Delivery.new(*rows[0])
      end
    end

    def self.find_content_by_id(id)
      DB.exec({Int64, String, String, Time},"SELECT id, country_code, message, created_at FROM news_contents WHERE id = $1", [id]).rows.map { |row| Content.new(*row) }.first
    end
  end
end
