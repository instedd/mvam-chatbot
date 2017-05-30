module MvamBot

  module News
    record Content, id : Int64, country_code : String, message : String, created_at : Time?
    record Delivery, id : Int64, content_id : Int32, user_id : Int32

    def self.subscribe(country, user)
      DB.db.exec("INSERT INTO news_subscriptions (user_id, country_code) values ($1, $2)", [user.id, country.iso_code])
    end

    def self.subscribed_users(country : MvamBot::Country)
      DB.db.query_all("SELECT user_id FROM news_subscriptions WHERE country_code = $1", [country.iso_code], as: {Int32})
    end

    def self.subscriptions_per_country
      rows = DB.db.query_all("SELECT country_code, count(1) FROM news_subscriptions GROUP BY country_code", as: {String, Int64})
      ({} of String => Int64).tap do |ret|
        rows.each do |row|
          country_code, count = row
          ret[country_code] = count
        end
      end
    end

    def self.schedule_delivery(country : MvamBot::Country, message : String) : Content
      timestamp = Time.new
      id = DB.db.scalar("INSERT INTO news_contents (country_code, message, created_at) VALUES ($1, $2, $3) RETURNING id", [country.iso_code, message, timestamp]).as(Int64)

      self.subscribed_users(country).each do |user_id|
        DB.db.exec("INSERT INTO news_deliveries (content_id, user_id, created_at) VALUES ($1, $2, $3)", [id, user_id, timestamp])
      end

      Content.new(id, country.iso_code, message, timestamp)
    end

    def self.pending_deliveries(content : Content)
      DB.db.scalar("SELECT count(*) FROM news_deliveries WHERE content_id = $1", [content.id])
    end

    def self.dequeue_delivery
      rows = DB.db.query_all("DELETE FROM news_deliveries WHERE id = (SELECT MIN(id) FROM news_deliveries) RETURNING id, content_id, user_id", as: {Int64, Int32, Int32})

      if rows.empty?
        nil
      else
        Delivery.new(*rows[0])
      end
    end

    def self.find_content_by_id(id)
      DB.db.query_all("SELECT id, country_code, message, created_at FROM news_contents WHERE id = $1", [id], as: {Int64, String, String, Time}).map { |row| Content.new(*row) }.first
    end
  end
end
