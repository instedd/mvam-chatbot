require "./spec_helper"

include MvamBot::Spec

describe ::MvamBot::Bot do

  describe "messaging" do

    it "should ask user location on first message" do
      DB.cleanup

      message = Telegram.message("/start location")
      user = Factory.user
      bot = Bot.new

      MvamBot::MessageHandler.new(message, user, bot).handle

      bot.messages.size.should eq(1)
      bot.messages[0].tap do |m|
        m[:text].should eq("What country do you live in?")
      end
    end

  end

end
