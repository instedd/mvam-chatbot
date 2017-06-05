module MvamBot
  module Bot
    abstract def run
    abstract def logger : Logger
    abstract def user_messenger(user, chat_id) : UserMessenger
    abstract def download_file(file_id)
  end
end

require "./bots/*"
