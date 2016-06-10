module MvamBot::Topics
  class Pinger

    def initialize(@bot : TelegramBot::Bot, @chat_id : Int32)
      @cancel_channel = Channel(Nil).new
      @timeout_channel = Channel(Nil).new
    end

    def schedule(time)
      timeout_channel = @timeout_channel
      cancel_channel = @cancel_channel

      spawn do
        sleep time
        timeout_channel.send(nil) unless timeout_channel.closed?
      end

      spawn do
        index, _ = Channel.select(timeout_channel.receive_op, cancel_channel.receive_op)
        timeout_channel.close
        cancel_channel.close
        send_ping if index == 0
      end

      self
    end

    def cancel
      @cancel_channel.send(nil) unless @cancel_channel.closed?
    end

    def send_ping
      MvamBot.logger.info("Sending ping to #{@chat_id}")
      # TODO: After sending this, move to another state with the transitions
      # - yes: repeats the question
      # - no: reschedule survey
      # - default: repeats the question
      # Schedule for much later another message indicating the survey is over, and asking the user to send a 'hello' when ready to begin again
      @bot.send_message @chat_id, "Are you still there?", reply_markup: TelegramBot::ReplyKeyboardHide.new
    end

  end
end
