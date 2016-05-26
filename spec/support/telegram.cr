module MvamBot::Spec

  module Telegram

    def self.message(text : String, id = 100, chat_id = 100000000, date = 1464284913, username = "jdoe", first_name = "John", last_name = "Doe")
      TelegramBot::Message.from_json <<-JSON
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
    end

  end

end
