module MvamBot::Spec

  class DB

    def self.cleanup
      ["logs", "users"].each do |table|
        ::MvamBot::DB.exec("DELETE FROM #{table};")
      end
    end

  end

end
