require "pg"

module MvamBot

  class DB
    @@db : PG::Connection?

    def self.exec(*args)
      db.exec(*args)
    end

    def self.db : PG::Connection
      @@db ||= PG.connect(MvamBot::Config.pg_url)
    end

    def self.db=(value : PG::Connection)
      @@db = value
    end

    def self.exec_with_builder(types, head : String, limit : Int32? = nil, offset : Int32? = nil)
      builder = QueryBuilder.new(head, limit, offset)
      yield builder
      db.exec(types, builder.query, builder.params)
    end

    def self.register_extension_decoder(extension_name : String, decoder : PG::Decoders::Decoder)
      rows = MvamBot::DB.exec({UInt32},"select oid from pg_type where typname = $1", [extension_name]).rows
      if rows.empty?
        raise "Postgres extension type #{extension_name} doesn't seem to be installed"
      else
        oid = rows[0][0]
        PG::Decoders.register_decoder(decoder, oid.to_i32)
      end
    end

    class QueryBuilder
      @conditions = Array(String).new
      @sortings = Array(String).new
      @params = Array(PG::PGValue).new

      def initialize(@head : String, @limit : Int32? = nil, @offset : Int32? = nil)
      end

      def add_condition(condition, params : Array(PG::PGValue)? = nil)
        @conditions << condition
        @params.concat(params) if params
      end

      def add_sorting(condition, params : Array(PG::PGValue)? = nil)
        @sortings << condition
        @params.concat(params) if params
      end

      def add_condition_unless_nil_param(condition, param : PG::PGValue?, ifnil = nil)
        if param
          add_condition(condition, [param])
        elsif ifnil
          add_condition(ifnil)
        end
      end

      def add_sorting_unless_nil_param(condition, param : PG::PGValue?, ifnil = nil)
        if param
          add_sorting(condition, [param])
        elsif ifnil
          add_sorting(ifnil)
        end
      end

      def query
        index = 0
        return String.build do |str|
          str << @head
          if !@conditions.empty?
            str << " WHERE "
            str << @conditions.join(" AND ").gsub(/\$\d+/) { "$#{index += 1}" }
          end
          if !@sortings.empty?
            str << " ORDER BY "
            str << @sortings.join(", ").gsub(/\$\d+/) { "$#{index += 1}" }
          end
          if @limit
            str << " LIMIT #{@limit} "
          end
          if @offset
            str << " OFFSET #{@offset} "
          end
        end
      end

      def params
        @params
      end

    end
  end
end
