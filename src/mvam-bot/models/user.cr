require "secure_random"

module MvamBot
  class User

    SESSION_LIFESPAN = 30.minutes

    property :id
    property :username
    property :name
    property :location_adm0_id
    property :location_adm1_id
    property :location_mkt_id
    property :location_lat
    property :location_lng
    property :conversation_step
    property :conversation_at
    property :conversation_session_id

    @id : Int32
    @username : String?
    @name : String?
    @location_adm0_id : Int32?
    @location_adm1_id : Int32?
    @location_mkt_id : Int32?
    @location_lat : Float32?
    @location_lng : Float32?
    @conversation_step : String?
    @conversation_at : Time?
    @conversation_session_id : String?

    def initialize(@id : Int32,
                   @username : String? = nil,
                   @name : String? = nil,
                   @location_adm0_id : Int32? = nil,
                   @location_adm1_id : Int32? = nil,
                   @location_mkt_id : Int32? = nil,
                   @location_lat : Float32? = nil,
                   @location_lng : Float32? = nil,
                   @conversation_step : String? = nil,
                   @conversation_at : Time? = nil,
                   @conversation_session_id : String? = nil)
    end

    def self.find(id : Int32)
      result = DB.exec({ Int32, String|Nil, String|Nil, Int32|Nil, Int32|Nil, Int32|Nil, Float32|Nil, Float32|Nil, String|Nil, Time|Nil, String|Nil },
        "SELECT id, username, name, location_adm0_id, location_adm1_id, location_mkt_id,
        location_lat, location_lng, conversation_step, conversation_at, conversation_session_id
        FROM users WHERE id = $1", [id])
      return nil if result.rows.size == 0
      User.new(*(result.rows[0]))
    end

    def self.create(id : Int32, username : String?, name : String?)
      DB.exec("INSERT INTO users (id, username, name) VALUES ($1, $2, $3)", [id, username, name])
      User.new(id, username, name)
    end

    def update
      DB.exec("UPDATE users SET username = $1, name = $2, location_adm0_id = $3,
               location_adm1_id = $4, location_mkt_id = $5, location_lat = $6,
               location_lng = $7, conversation_step = $8, conversation_at = $9,
               conversation_session_id = $10
               WHERE id = $11",
               [@username, @name, @location_adm0_id, @location_adm1_id, @location_mkt_id,
                @location_lat, @location_lng, @conversation_step, @conversation_at, @conversation_session_id, @id])
    end

    def location_description
      Location.short_description(location_adm0_id, location_adm1_id, location_mkt_id)
    end

    def ensure_session_id
      # Generate a new session id if last conversation was too long ago, or return the current one
      if conversation_session_id.nil? || conversation_at.nil? || conversation_at.not_nil! < (Time.utc_now - SESSION_LIFESPAN)
        @conversation_session_id = SecureRandom.uuid
        # TODO: Clear conversation state
      end
      conversation_session_id.not_nil!
    end

  end
end
