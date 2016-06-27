module MvamBot::Spec

  class DB

    def self.cleanup
      ["files", "logs", "survey_responses", "users", "news"].each do |table|
        ::MvamBot::DB.exec("DELETE FROM #{table};")
      end
      Location.delete_test_locations
    end

  end

end
