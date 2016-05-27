require "./spec_helper"

include MvamBot::Spec
include MvamBot::Spec::Wit

describe ::MvamBot::Bot do

  describe "messaging" do

    it "should ask user location on first message" do
      DB.cleanup
      messages = handle_message("/start location")
      messages.size.should eq(1)
      messages[0][:text].should eq("What country do you live in?")
      messages[0][:reply_markup].as(TelegramBot::ReplyKeyboardMarkup).keyboard.flatten.size.should eq(MvamBot::Location::Adm0.cache.size)
    end

    it "should return the requested price for the user location" do
      DB.cleanup
      user = Factory.user_with_location
      messages = handle_message("/price rice", user)
      messages.size.should eq(1)
      messages[0][:text].should match(/Rice.+85.+DZD per KG.+Algiers.+/)
    end

    it "should handle query with no prices associated" do
      DB.cleanup
      user = Factory.user_with_location
      messages = handle_message("/price foobar", user)
      messages.size.should eq(1)
      messages[0][:text].should match(/Sorry.+foobar.+/)
    end

    it "should handle query with multiple commodities associated" do
      DB.cleanup
      user = Factory.user_with_location
      messages = handle_message("/price o", user)
      messages.size.should eq(1)
      messages[0][:text].should eq("I have information on Oil, Onions, Oranges; please choose one.")
      messages[0][:reply_markup].as(TelegramBot::InlineKeyboardMarkup).inline_keyboard.flatten.size.should eq(3)
    end

    it "should return help" do
      DB.cleanup
      messages = handle_message("/help")
      messages.size.should eq(1)
      messages[0][:text].should contain("You can ask for the price of a commodity in your location using the `/price` command.")
      messages[0][:text].should_not contain("For example, try sending `/price")
    end

    it "should return help with example if user has location" do
      DB.cleanup
      user = Factory.user_with_location
      messages = handle_message("/help", user)
      messages.size.should eq(1)
      messages[0][:text].should contain("You can ask for the price of a commodity in your location using the `/price` command.")
      messages[0][:text].should contain("For example, try sending `/price rice`.")
    end

    it "should return price when asking via wit" do
      DB.cleanup
      user = Factory.user_with_location
      messages = handle_message_with_wit("How much is rice?", user) do |msg, sid, actions|
        context = actions.merge(sid, user.conversation_state, entities({ "intent" => "QueryPrice", "commodity" => "rice" }), msg)
        actions.custom("show-price", sid, context)
      end
      
      messages.size.should eq(1)
      messages[0][:text].should match(/Rice.+85.+DZD per KG.+Algiers.+/)
    end

  end

end
