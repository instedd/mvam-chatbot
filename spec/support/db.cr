module MvamBot::Spec

  class DB

    def self.cleanup
      ["callback_logs", "message_logs", "query_logs", "users"].each do |table|
        ::MvamBot::DB.exec("DELETE FROM #{table};")
      end
    end

  end

end
