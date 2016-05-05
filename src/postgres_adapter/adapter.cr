require "active_record"
require "active_record/adapter"
require "active_record/sql/query_generator"
require "postgres_adapter/postgres_adapter"

module PostgresAdapter
  class Adapter < ActiveRecord::Adapter

    # Monkeypatch create method so we can actually INSERT an id field
    def create(fields)
      field_names = self.fields
      field_refs = (1..self.fields.size).map { |x| "$#{x}" }

      query = "INSERT INTO #{table_name} (#{field_names.join(", ")}) VALUES (#{field_refs.join(", ")}) RETURNING #{primary_field}"

      values = [] of PG::PGValue
      field_names.each do |name|
        if fields.has_key?(name) && !fields[name].null?
          values << pgify_value(fields[name].not_null!)
        else
          values << nil
        end
      end

      result = connection.exec(query, values)
      result.rows[0][0]
    end

  end
end
