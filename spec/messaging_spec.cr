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

    it "should return help" do
      DB.cleanup
      messages = handle_message("/help")
      messages.size.should eq(1)
      messages[0][:text].should contain("You can ask for the price of a commodity in your location using the `/price` command.")
      messages[0][:text].should_not contain("For example, try sending `/price")
    end

    it "should return help with example if user has location" do
      DB.cleanup
      user = Factory::DB.user_with_location
      messages = handle_message("/help", user)
      messages.size.should eq(1)
      messages[0][:text].should contain("You can ask for the price of a commodity in your location using the `/price` command.")
      messages[0][:text].should contain("For example, try sending `/price rice`.")
    end

    describe "via wit" do

      it "should return commodity price" do
        DB.cleanup
        user = Factory::DB.user_with_location
        messages = handle_message("How much is rice?", user) do |msg, sid, actions|
          context = actions.merge(sid, user.conversation_state, entities({ "intent" => "QueryPrice", "commodity" => "rice" }), msg, 0.9)
          actions.custom("show-price", sid, context, 0.9)
        end

        messages.size.should eq(1)
        messages[0][:text].should match(/Rice.+85.+DZD per KG.+Algiers.+/)
      end

      it "should ask commodity to user and then return its price" do
        DB.cleanup
        bot = Bot.new
        user = Factory::DB.user_with_location

        handle_message("How much?", user: user, bot: bot) do |msg, sid, actions|
          context = actions.merge(sid, user.conversation_state, entities({ "intent" => "QueryPrice"}), msg, 0.9)
          actions.say(sid, context, "What do you want to know the price of?", 0.9)
          context
        end

        handle_message("Rice", user: user, bot: bot) do |msg, sid, actions|
          context = actions.merge(sid, user.conversation_state, entities({ "commodity" => "rice" }), msg, 0.9)
          actions.custom("show-price", sid, context, 0.9)
        end

        bot.messages.size.should eq(2)
        bot.messages[0][:text].should eq("What do you want to know the price of?")
        bot.messages[1][:text].should match(/Rice.+85.+DZD per KG.+Algiers.+/)
      end

      it "should return not understood when not-understood if fired from wit" do
        DB.cleanup
        user = Factory::DB.user_with_location

        messages = handle_message("Lorem ipsum dolor sit amet", user: user) do |msg, sid, actions|
          context = actions.merge(sid, user.conversation_state, entities(Hash(String, String).new), msg, 0.9)
          actions.custom("not-understood", sid, context, 0.9)
        end

        messages.size.should eq(1)
        messages[0][:text].should contain("Sorry, I did not understand what you just said.")
      end

      it "should return not understood if wit is not set" do
        DB.cleanup
        user = Factory::DB.user_with_location

        handler = message_handler("Lorem ipsum dolor sit amet", user: user)
        handler.handle
        messages = handler.bot.as(Bot).messages

        messages.size.should eq(1)
        messages[0][:text].should contain("Sorry, I did not understand what you just said.")
      end

      it "should offer /help if not understood at least three times" do
        DB.cleanup
        user = Factory::DB.user_with_location
        bot = Bot.new

        3.times do
          handle_message("Lorem ipsum dolor sit amet", user: user, bot: bot) do |msg, sid, actions|
            context = actions.merge(sid, user.conversation_state, entities(Hash(String, String).new), msg, 0.9)
            actions.custom("not-understood", sid, context, 0.9)
          end
        end

        bot.messages.size.should eq(3)

        bot.messages[0][:text].should contain("Sorry, I did not understand what you just said.")
        bot.messages[1][:text].should contain("Sorry, I did not understand what you just said.")
        bot.messages[2][:text].should contain("Sorry, I did not understand what you just said.")

        bot.messages[0][:text].should_not contain("Send `/help` if you want information on how I can be of assistance.")
        bot.messages[1][:text].should_not contain("Send `/help` if you want information on how I can be of assistance.")
        bot.messages[2][:text].should contain("Send `/help` if you want information on how I can be of assistance.")
      end

    end

  end

end
