module MvamBot

  module Logs

    record Log, id : Int64, user_id : Int32, kind : String, text : String, query_offset : Int32?, answer : String?, answer_size : Int32?, timestamp : Time

    INCOMING_MESSAGE = "IncomingMessage"
    OUTGOING_MESSAGE = "OutgoingMessage"
    QUERY = "Query"
    CALLBACK = "Callback"

    FIELD_TYPES = { Int64, Int32, String, String, Int32 | Nil, String | Nil, Int32 | Nil, Time }
    FIELD_NAMES = %w{id user_id kind text query_offset answer answer_size timestamp}

    def self.for_user(user_id : Int32, limit = 1000)
      DB.db.query_all("SELECT #{FIELD_NAMES.join(", ")} FROM logs WHERE user_id = $1 ORDER BY id DESC LIMIT #{limit}", [user_id], as: FIELD_TYPES).map { |row| Log.new(*row) }
    end

    def self.count(user_id : Int32) : Int64
      DB.db.scalar("SELECT COUNT(*) FROM logs WHERE user_id = $1", [user_id]).as(Int64)
    end

    record Message, user_id : Int32, is_outgoing : Bool, text : String, timestamp : Time do
      def self.create(user_id : Int32, is_outgoing : Bool, text : String?, timestamp : Time)
        DB.db.exec("INSERT INTO logs (user_id, kind, text, timestamp) VALUES ($1, $2, $3, $4)",
                [user_id, is_outgoing ? OUTGOING_MESSAGE : INCOMING_MESSAGE, text, timestamp])
      end
    end

    record Query, user_id : Int32, query : String, query_offset : Int32, answer_size : Int32, timestamp : Time do
      def self.create(user_id : Int32, query : String?, query_offset : Int32, answer_size : Int32, answer_pm_text : String, timestamp : Time)
        DB.db.exec("INSERT INTO logs (user_id, kind, text, query_offset, answer_size, timestamp) VALUES ($1, $2, $3, $4, $5, $6)",
                [user_id, QUERY, query, query_offset, answer_size, timestamp])
      end
    end

    record Callback, user_id : Int32, data : String?, answer : String?, timestamp : Time do
      def self.create(user_id : Int32, data : String?, answer : String?, timestamp : Time)
        DB.db.exec("INSERT INTO logs (user_id, kind, text, answer, timestamp) VALUES ($1, $2, $3, $4, $5)",
                [user_id, CALLBACK, data, answer, timestamp])
      end
    end

  end

end
