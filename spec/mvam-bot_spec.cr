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
        messages = handle_message_with_wit("How much is rice?", user) do |msg, sid, actions|
          context = actions.merge(sid, user.conversation_state, entities({ "intent" => "QueryPrice", "commodity" => "rice" }), msg)
          actions.custom("show-price", sid, context)
        end

        messages.size.should eq(1)
        messages[0][:text].should match(/Rice.+85.+DZD per KG.+Algiers.+/)
      end

      it "should ask commodity to user and then return its price" do
        DB.cleanup
        bot = Bot.new
        user = Factory::DB.user_with_location

        handle_message_with_wit("How much?", user: user, bot: bot) do |msg, sid, actions|
          context = actions.merge(sid, user.conversation_state, entities({ "intent" => "QueryPrice"}), msg)
          actions.say(sid, context, "What do you want to know the price of?")
          context
        end

        handle_message_with_wit("Rice", user: user, bot: bot) do |msg, sid, actions|
          context = actions.merge(sid, user.conversation_state, entities({ "commodity" => "rice" }), msg)
          actions.custom("show-price", sid, context)
        end

        bot.messages.size.should eq(2)
        bot.messages[0][:text].should eq("What do you want to know the price of?")
        bot.messages[1][:text].should match(/Rice.+85.+DZD per KG.+Algiers.+/)
      end

      it "should return not understood when not-understood if fired from wit" do
        DB.cleanup
        user = Factory::DB.user_with_location

        messages = handle_message_with_wit("Lorem ipsum dolor sit amet", user: user) do |msg, sid, actions|
          context = actions.merge(sid, user.conversation_state, entities(Hash(String, String).new), msg)
          actions.custom("not-understood", sid, context)
        end

        messages.size.should eq(1)
        messages[0][:text].should contain("Sorry, I did not understand what you just said.")
      end

      it "should return not understood if wit is not set" do
        DB.cleanup
        user = Factory::DB.user_with_location

        messages = handle_message("Lorem ipsum dolor sit amet", user: user)
        messages.size.should eq(1)
        messages[0][:text].should contain("Sorry, I did not understand what you just said.")
      end

      it "should offer /help if not understood at least three times" do
        DB.cleanup
        user = Factory::DB.user_with_location
        bot = Bot.new

        3.times do
          handle_message_with_wit("Lorem ipsum dolor sit amet", user: user, bot: bot) do |msg, sid, actions|
            context = actions.merge(sid, user.conversation_state, entities(Hash(String, String).new), msg)
            actions.custom("not-understood", sid, context)
          end
        end

        bot.messages.size.should eq(3)

        bot.messages[0][:text].should contain("Sorry, I did not understand what you just said.")
        bot.messages[1][:text].should contain("Sorry, I did not understand what you just said.")
        bot.messages[2][:text].should contain("Sorry, I did not understand what you just said.")

        bot.messages[0][:text].should_not contain("Send `/help` if you want more information on how I can be of assistance.")
        bot.messages[1][:text].should_not contain("Send `/help` if you want more information on how I can be of assistance.")
        bot.messages[2][:text].should contain("Send `/help` if you want more information on how I can be of assistance.")
      end

    end

  end

  describe "inline queries" do
    context "user with known location" do
      it "return results for user location" do
        DB.cleanup
        user = Factory::DB.user_with_location

        reply = handle_query("rice", user).first
        reply[:results].size.should eq(3)
        reply[:switch_pm_text].should match(/Location is Algiers.*/)
      end

      it "should use known location regardless of reported gps position" do
        DB.cleanup
        user = Factory::DB.user_with_location

        reply = handle_query("rice", user, location: {-34.515951, -58.474975}).first
        reply[:switch_pm_text].should match(/Location is Algiers.*/)
      end
    end

    context "user without location" do
      context "with gps position" do
        it "returns result for inferred location if there is a single close match" do
          DB.cleanup
          user = Factory::DB.user
          location = MvamBot::Location::Mkt.find_by_name("Lindi", 48364).not_nil!

          replies = handle_query("rice", user, location: {location.lat.not_nil!, location.lng.not_nil!}, search_radius_kilometers: 1)
          reply = replies.first

          (reply[:results].size > 0).should be_true
          reply[:switch_pm_text].should match(/Location is Lindi.*/)
        end

        it "asks user to input location if there is more than one close match" do
          DB.cleanup
          user = Factory::DB.user
          location = MvamBot::Location::Mkt.find_by_name("Lindi", 48364).not_nil!

          reply = handle_query("rice", user, location: {location.lat.not_nil!, location.lng.not_nil!}, search_radius_kilometers: 200).first
          reply[:results].size.should eq(0)
          reply[:switch_pm_text].should match(/set your location to start/)
        end

        it "stores reported gps position even if there was no match" do
          DB.cleanup
          user = Factory::DB.user

          reply = handle_query("rice", user, location: {-34.516065, -58.474936}, search_radius_kilometers: 1).first

          updated_user = MvamBot::User.find(user.id).not_nil!
          updated_user.location_lat.not_nil!.should be_close(-34.516065, 0.0001)
          updated_user.location_lng.not_nil!.should be_close(-58.474936, 0.0001)
        end
      end
    end

  end

end
