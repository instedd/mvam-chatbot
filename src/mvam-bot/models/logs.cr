module MvamBot

  module Logs

    record Message, user_id : Int32, is_outgoing : Bool, text : String, timestamp : Time do
      def self.create(user_id : Int32, is_outgoing : Bool, text : String?, timestamp : Time)
        DB.exec("INSERT INTO message_logs (user_id, is_outgoing, text, timestamp) VALUES ($1, $2, $3, $4)",
                [user_id, is_outgoing, text, timestamp])
      end
    end

    record Query, user_id : Int32, query : String, query_offset : Int32, answer_size : Int32, timestamp : Time do
      def self.create(user_id : Int32, query : String?, query_offset : Int32, answer_size : Int32, answer_pm_text : String, timestamp : Time)
        DB.exec("INSERT INTO query_logs (user_id, query, query_offset, answer_size, answer_pm_text, timestamp) VALUES ($1, $2, $3, $4, $5, $6)",
                [user_id, query, query_offset, answer_size, answer_pm_text, timestamp])
      end
    end

  end

end
