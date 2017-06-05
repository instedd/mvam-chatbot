module MvamBot
  class BotDefinition
    property id : Int64
    property name : String
    property flow : String?
    property page_id : String
    property access_token : String
    property locales : String?
    property created_at : Time
    property updated_at : Time

    FIELD_TYPES = {Int64, String, String | Nil, String, String, Array(String) | Nil, Time, Time}
    FIELD_NAMES = %w(id name flow page_id access_token locales created_at updated_at)

    def initialize(@id, @name, @flow, @page_id, @access_token, @locales : String?, created_at = nil, updated_at = nil)
      @created_at = created_at || Time.new
      @updated_at = updated_at || Time.new
    end

    def initialize(@id, @name, @flow, @page_id, @access_token, locales : Array(String), created_at = nil, updated_at = nil)
      @locales = locales.join(", ")
      @created_at = created_at || Time.new
      @updated_at = updated_at || Time.new
    end

    def locales_array
      self.class.split_locales(locales)
    end

    def self.empty
      Builder.new
    end

    class Builder
      property id : Int64?
      property name : String?
      property flow : String?
      property page_id : String?
      property access_token : String?
      property locales : String?

      def initialize
      end

      def initialize(@name, @flow, @page_id, @access_token, @locales)
      end
    end

    def self.create(name, flow, page_id, access_token, locales)
      timestamp = Time.new
      id = DB.db.scalar(
        "INSERT INTO bots (#{FIELD_NAMES[1..-1].join(", ")})
         VALUES ($1, $2, $3, $4, $5, $6, $7)
         RETURNING id",
        name, flow, page_id, access_token, split_locales(locales), timestamp, timestamp).as(Int64)
      self.new(id, name, flow, page_id, access_token, locales, timestamp, timestamp)
    end

    def self.update(id, name, flow, page_id, access_token, locales)
      DB.db.exec(
        "UPDATE bots SET name = $1, flow = $2, page_id = $3, access_token = $4, locales = $5, updated_at = $6
         WHERE id = $7",
        name, flow, page_id, access_token, split_locales(locales), Time.new, id)
    end

    def self.find(id : Int64)
      row = DB.db.query_one?("SELECT #{FIELD_NAMES.join(", ")} FROM bots WHERE id = $1", id, as: FIELD_TYPES)
      return nil if row.nil?
      self.new(*row)
    end

    def self.find!(id : Int64)
      find(id).not_nil!
    end

    def self.resolve(page_id, locale)
      bot_row = if locale
                  lang, country = locale.split(/-|_/, 2)
                  row = DB.db.query_one?("SELECT #{FIELD_NAMES.join(", ")} FROM bots WHERE page_id = $1 AND $2 = ANY(locales) LIMIT 1", page_id, locale, as: FIELD_TYPES)
                  row ||= DB.db.query_one?("SELECT #{FIELD_NAMES.join(", ")} FROM bots WHERE page_id = $1 AND $2 = ANY(locales) LIMIT 1", page_id, lang.not_nil!, as: FIELD_TYPES) if lang
                  row ||= default_row(page_id)
                  row
                else
                  default_row(page_id)
                end

      return nil if bot_row.nil?
      self.new(*bot_row)
    end

    private def self.default_row(page_id)
      DB.db.query_one?("SELECT #{FIELD_NAMES.join(", ")} FROM bots WHERE page_id = $1 AND ('*' = ANY(locales) OR locales IS NULL OR CARDINALITY(locales) = 0)  LIMIT 1", page_id, as: FIELD_TYPES)
    end

    def self.delete(id : Int64)
      DB.db.exec("DELETE FROM bots WHERE id = $1", id)
    end

    def self.all
      DB.db.query_all("SELECT #{FIELD_NAMES.join(", ")} FROM bots", as: FIELD_TYPES).map { |row| self.new(*row) }
    end

    private def self.split_locales(str : String?)
      (str || "").split(/\s*,\s*/).reject { |l| l.nil? || l.empty? }
    end
  end
end
