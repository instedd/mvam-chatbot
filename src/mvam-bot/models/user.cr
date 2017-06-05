require "secure_random"

module MvamBot
  class User
    SESSION_LIFESPAN = 30.minutes

    alias ConversationState = Hash(String, Bool | Float64 | Int64 | String | Nil)

    property id : Int32
    property username : String?
    property name : String?
    property location_adm0_id : Int32?
    property location_adm1_id : Int32?
    property location_mkt_id : Int32?
    property location_lat : Float64?
    property location_lng : Float64?
    property gps_timestamp : Time?
    property conversation_step : String?
    property conversation_at : Time?
    property conversation_session_id : String?
    property conversation_state : ConversationState
    property survey_at : Time?
    property gender : String?
    property timezone : Int32?
    property locale : String?
    property facebook_psid : String?
    property facebook_page_id : String?
    property telegram_user_id : Int32?

    FIELD_TYPES = {Int32, String | Nil, String | Nil, Int32 | Nil, Int32 | Nil, Int32 | Nil, Float64 | Nil, Float64 | Nil, Time | Nil, String | Nil, Time | Nil, String | Nil, String | Nil, Time | Nil, String | Nil, Int32 | Nil, String | Nil, String | Nil, String | Nil, Int32 | Nil}
    FIELD_NAMES = %w{id username name location_adm0_id location_adm1_id location_mkt_id location_lat location_lng gps_timestamp conversation_step conversation_at conversation_session_id conversation_state survey_at gender timezone locale facebook_psid facebook_page_id telegram_user_id}

    def initialize(@id : Int32,
                   @username : String? = nil,
                   @name : String? = nil,
                   @location_adm0_id : Int32? = nil,
                   @location_adm1_id : Int32? = nil,
                   @location_mkt_id : Int32? = nil,
                   @location_lat : Float64? = nil,
                   @location_lng : Float64? = nil,
                   @gps_timestamp : Time? = nil,
                   @conversation_step : String? = nil,
                   @conversation_at : Time? = nil,
                   @conversation_session_id : String? = nil,
                   conversation_state_json : String? = nil,
                   @survey_at : Time? = nil,
                   @gender : String? = nil,
                   @timezone : Int32? = nil,
                   @locale : String? = nil,
                   @facebook_psid : String? = nil,
                   @facebook_page_id : String? = nil,
                   @telegram_user_id : Int32? = nil)
      @conversation_state = ConversationState.new.tap do |state|
        if json = conversation_state_json
          JSON.parse(json).as_h.each do |key, value|
            case value
            when Bool    then state[key] = value
            when Float64 then state[key] = value
            when Int64   then state[key] = value
            when String  then state[key] = value
            end
          end
        end
      end
    end

    def self.all
      DB.db.query_all("SELECT #{FIELD_NAMES.join(", ")} FROM users", as: FIELD_TYPES).map { |row| User.new(*row) }
    end

    def self.to_survey(timestamp = Time.utc_now)
      DB.db.query_all("SELECT #{FIELD_NAMES.join(", ")} FROM users WHERE survey_at <= $1", [timestamp], as: FIELD_TYPES).map { |row| User.new(*row) }
    end

    def self.find(id : Int32)
      result = DB.db.query_one?(
        "SELECT #{FIELD_NAMES.join(", ")}
        FROM users WHERE id = $1", [id], as: FIELD_TYPES)
      return nil if result.nil?
      User.new(*result)
    end

    def self.find!(id : Int32)
      find(id).not_nil!
    end

    def self.find_telegram(id : Int32)
      result = DB.db.query_one?(
        "SELECT #{FIELD_NAMES.join(", ")}
        FROM users WHERE telegram_user_id = $1", [id], as: FIELD_TYPES)
      return nil if result.nil?
      User.new(*result)
    end

    def self.find_facebook(id : String)
      result = DB.db.query_one?(
        "SELECT #{FIELD_NAMES.join(", ")}
        FROM users WHERE facebook_psid = $1", [id], as: FIELD_TYPES)
      return nil if result.nil?
      User.new(*result)
    end

    def self.create(username : String? = nil,
                    name : String? = nil,
                    location_adm0_id : Int32? = nil,
                    location_adm1_id : Int32? = nil,
                    location_mkt_id : Int32? = nil,
                    location_lat : Float64? = nil,
                    location_lng : Float64? = nil,
                    gps_timestamp : Time? = nil,
                    conversation_step : String? = nil,
                    conversation_at : Time? = nil,
                    conversation_session_id : String? = nil,
                    conversation_state : ConversationState = ConversationState.new,
                    survey_at : Time? = nil,
                    gender : String? = nil,
                    timezone : Int32? = nil,
                    locale : String? = nil,
                    facebook_psid : String? = nil,
                    facebook_page_id : String? = nil,
                    telegram_user_id : Int32? = nil)
      id = DB.db.scalar(
        "INSERT INTO users (#{FIELD_NAMES[1..-1].join(", ")})
        VALUES (#{FIELD_NAMES[1..-1].size.times.map { |i| "$#{i + 1}" }.join(", ")})
        RETURNING id",
        [username, name, location_adm0_id, location_adm1_id, location_mkt_id, location_lat, location_lng, gps_timestamp, conversation_step, conversation_at, conversation_session_id, conversation_state.to_json, survey_at, gender, timezone, locale, facebook_psid, facebook_page_id, telegram_user_id]).as(Int32)
      User.new(id: id, username: username, name: name, location_adm0_id: location_adm0_id, location_adm1_id: location_adm1_id, location_mkt_id: location_mkt_id, location_lat: location_lat, location_lng: location_lng, gps_timestamp: gps_timestamp, conversation_step: conversation_step, conversation_at: conversation_at, conversation_session_id: conversation_session_id, conversation_state_json: conversation_state.to_json, survey_at: survey_at, gender: gender, timezone: timezone, locale: locale, facebook_psid: facebook_psid, facebook_page_id: facebook_page_id, telegram_user_id: telegram_user_id)
    end

    def update
      DB.db.exec("UPDATE users SET username = $1, name = $2, location_adm0_id = $3,
               location_adm1_id = $4, location_mkt_id = $5, location_lat = $6,
               location_lng = $7, gps_timestamp = $8, conversation_step = $9, conversation_at = $10,
               conversation_session_id = $11, conversation_state = $12, survey_at = $13, gender = $14, timezone = $15, locale = $16,
               facebook_psid = $17, facebook_page_id = $18, telegram_user_id = $19
               WHERE id = $20",
        [@username, @name, @location_adm0_id, @location_adm1_id, @location_mkt_id,
         @location_lat, @location_lng, @gps_timestamp, @conversation_step, @conversation_at,
         @conversation_session_id, conversation_state_json, @survey_at, @gender, @timezone, @locale,
         @facebook_psid, @facebook_page_id, @telegram_user_id, @id])
    end

    def full_name
      if username && name
        "#{name} (#{username})"
      else
        username || name
      end
    end

    def location_description
      Location.short_description(location_adm0_id, location_adm1_id, location_mkt_id)
    end

    def location_long_description
      Location.long_description(location_adm0_id, location_adm1_id, location_mkt_id)
    end

    def ensure_session_id
      # Generate a new session id if last conversation was too long ago, or return the current one
      if conversation_session_id.nil? || conversation_at.nil? || conversation_at.not_nil! < (Time.utc_now - SESSION_LIFESPAN)
        self.conversation_session_id = SecureRandom.uuid
        @conversation_state.clear
      end
      conversation_session_id.not_nil!
    end

    private def conversation_state_json
      @conversation_state.to_json
    end

    def set_gps_position(lat : Float64, lng : Float64, timestamp = Time.now)
      @location_lat = lat
      @location_lng = lng
      @gps_timestamp = timestamp
    end

    def position_set_recently?(span = 4.days)
      return @gps_timestamp && (Time.now - @gps_timestamp.not_nil!) < span
    end

    def clear_gps_data
      @location_lat = nil
      @location_lng = nil
      @gps_timestamp = nil
    end

    def clear_administrative_location
      @location_adm0_id = nil
      @location_adm1_id = nil
      @location_mkt_id = nil
    end

    def clear_all_location_data
      self.clear_administrative_location
      self.clear_gps_data
    end
  end
end
