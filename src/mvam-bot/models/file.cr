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
      DB.exec(
        "INSERT INTO files (id, user_id, kind, extension, data, timestamp)
         VALUES ($1, $2, $3, $4, $5, $6)
         RETURNING id",
         [id, user_id, kind, extension, data, timestamp])
      self.new(id, user_id, kind, extension, data, timestamp)
    end

    def self.find(id : String)
      rows = DB.exec(FIELD_TYPES, "SELECT #{FIELD_NAMES.join(", ")} FROM files WHERE id = $1", [id]).rows
      return nil if rows.size == 0
      self.new(*rows[0])
    end

  end

end
