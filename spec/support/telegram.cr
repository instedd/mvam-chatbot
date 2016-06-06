module MvamBot::Spec

  module Telegram

    def self.message(text : String, id = 100, chat_id = 100000000, date = 1464284913, username = "jdoe", first_name = "John", last_name = "Doe", location = nil)
      msg = TelegramBot::Message.from_json <<-JSON
      {
        "message_id": #{id},
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
        m.location = TelegramBot::Location.from_json("{ \"latitude\": #{location[0]}, \"longitude\": #{location[1]} }") if location
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
        q.location = TelegramBot::Location.from_json("{ \"latitude\": #{location[0]}, \"longitude\": #{location[1]} }") if location
      end
    end

    def self.photo(name : String, id = 100, chat_id = 100000000, date = 1464284913, username = "jdoe", first_name = "John", last_name = "Doe", location = nil)
      msg = TelegramBot::Message.from_json <<-JSON
      {
        "message_id": #{id},
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
        "photo": [
          {
            "file_id": "#{name}",
            "width": 90,
            "height": 90,
            "file_size": 732
          },
          {
            "file_id": "#{name}",
            "width": 320,
            "height": 320,
            "file_size": 7086
          },
          {
            "file_id": "#{name}",
            "width": 800,
            "height": 800,
            "file_size": 36840
          },
          {
            "file_id": "#{name}",
            "width": 1280,
            "height": 1280,
            "file_size": 54531
          }
        ]
      }
      JSON

      msg.tap do |m|
        m.location = TelegramBot::Location.from_json("{ \"latitude\": #{location[0]}, \"longitude\": #{location[1]} }") if location
      end
    end


  end

end
