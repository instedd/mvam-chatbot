module MvamBot::Spec

  module Factory

    def self.user(id = 100000000, username = "jdoe", name = "John Doe")
      MvamBot::User.create(id, username, name)
    end

  end

end
