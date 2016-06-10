require "./spec_helper"

include MvamBot::Spec
include MvamBot::Spec::Wit

describe ::MvamBot::Topics::Prices do
  describe "messaging" do
    it "should return the requested price for the user location" do
      DB.cleanup
      user = Factory::DB.user_with_location
      messages = handle_message("/price rice", user)
      messages.size.should eq(1)
      messages[0][:text].should match(/Rice.+85.+DZD per KG.+Algiers.+/)
    end

    it "should handle query with no prices associated" do
      DB.cleanup
      user = Factory::DB.user_with_location
      messages = handle_message("/price foobar", user)
      messages.size.should eq(1)
      messages[0][:text].should match(/Sorry.+foobar.+/)
    end

    it "should handle query with multiple commodities associated" do
      DB.cleanup
      user = Factory::DB.user_with_location
      messages = handle_message("/price o", user)
      messages.size.should eq(1)
      messages[0][:text].should eq("I have information on Oil, Onions; please choose one.")
      messages[0][:reply_markup].as(TelegramBot::InlineKeyboardMarkup).inline_keyboard.flatten.size.should eq(2)
    end

    describe "via wit" do
      it "should return commodity price" do
        DB.cleanup
        user = Factory::DB.user_with_location
        messages = handle_message("How much is rice?", user, understand: response({"intent" => "QueryPrice", "commodity" => "rice"}))

        messages.size.should eq(1)
        messages[0][:text].should match(/Rice.+85.+DZD per KG.+Algiers.+/)
      end

      it "should ask commodity to user and then return its price" do
        DB.cleanup
        bot = Bot.new
        user = Factory::DB.user_with_location

        handle_message("How much?", user: user, bot: bot, understand: response({"intent" => "QueryPrice"}))
        handle_message("Rice", user: user, bot: bot, understand: response({"commodity" => "rice"}))

        bot.messages.size.should eq(2)
        bot.messages[0][:text].should match(/What do you want to know the price of\?/)
        bot.messages[1][:text].should match(/Rice.+85.+DZD per KG.+Algiers.+/)
      end
    end
  end
end
