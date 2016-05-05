require "pg"

module MvamBot

  class DB
    @@db = PG.connect(ENV["PG_URL"])

    def self.exec(*args)
      @@db.exec(*args)
    end
  end

end
