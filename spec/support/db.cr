module MvamBot::Spec

  class DB

    def self.cleanup
      ["files", "logs", "survey_responses", "news_subscriptions", "news_deliveries", "news", "users"].each do |table|
        ::MvamBot::DB.exec("DELETE FROM #{table};")
      end
      Location.delete_test_locations
    end

  end

end
