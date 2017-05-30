module MvamBot

  class DataFile

    property id : String
    property user_id : Int32?
    property kind : String
    property extension : String
    property data : Slice(UInt8)
    property timestamp : Time

    FIELD_TYPES = { String, Int32 | Nil, String, String, Slice(UInt8), Time }
    FIELD_NAMES = %w(id user_id kind extension data timestamp)

    def initialize(@id : String, @user_id : Int32?,  @kind : String, @extension : String, @data : Slice(UInt8), @timestamp : Time = Time.utc_now)
    end

    def self.create(id : String, user_id : Int32, kind : String, extension : String, data : Slice(UInt8), timestamp : Time = Time.utc_now)
      DB.db.exec(
        "INSERT INTO files (id, user_id, kind, extension, data, timestamp)
         VALUES ($1, $2, $3, $4, $5, $6)
         RETURNING id",
         id, user_id, kind, extension, data, timestamp)
      self.new(id, user_id, kind, extension, data, timestamp)
    end

    def self.find(id : String)
      row = DB.db.query_one?("SELECT #{FIELD_NAMES.join(", ")} FROM files WHERE id = $1", id, as: FIELD_TYPES)
      return nil if row.nil?
      self.new(*row)
    end

  end

end
