require "./spec_helper"

include MvamBot::Spec

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

  end

end
