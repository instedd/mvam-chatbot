module MvamBot::Spec

  module Telegram

    def self.message(text : String, id = 100, chat_id = 100000000, date = 1464284913, username = "jdoe", first_name = "John", last_name = "Doe", location = nil)
      msg = TelegramBot::Message.from_json <<-JSON
      {
        "message_id": 100,
        "from": {
          "id": #{chat_id},
          "first_name": "#{first_name}",
          "last_name": "#{last_name}",
          "username": "#{username}"
        },
        "date": #{date},
        "chat": {
          "id": #{chat_id},
          "type": "private",
          "username": "#{username}",
          "first_name": "#{first_name}",
          "last_name": "#{last_name}"
        },
        "text": "#{text}"
      }
      JSON

      msg.tap do |m|
        if location
          m.location = TelegramBot::Location.from_json("{ \"latitude\": #{location[0]}, \"longitude\": #{location[1]} }")
        end
      end
    end

    def self.query(text : String, id = "FOOBAR", username = "jdoe", first_name = "John", last_name = "Doe", location : {Float64, Float64}? = nil)
      json = <<-JSON
      {
        "id": "#{id}",
        "from": {
          "id": 100000000,
          "first_name": "#{first_name}",
          "last_name": "#{last_name}",
          "username": "#{username}"
        },
        "query": "#{text}",
        "offset": "0"
      }
      JSON
      TelegramBot::InlineQuery.from_json(json).tap do |q|
        if location
          q.location = TelegramBot::Location.from_json("{ \"latitude\": #{location[0]}, \"longitude\": #{location[1]} }")
        end
      end
    end

  end

end
