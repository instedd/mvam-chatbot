require "./spec_helper"

include MvamBot::Spec
include MvamBot::Spec::Wit

describe ::MvamBot::Topics::Prices do

  describe "via command" do

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

    it "should handle prices command without query" do
      DB.cleanup
      user = Factory::DB.user_with_location
      messages = handle_message("/price", user)
      messages.size.should eq(1)
      messages[0][:text].not_nil!.should contain("Send `/price FOOD` to get the prices of a food near you.")
    end

    it "should handle query with multiple commodities associated" do
      DB.cleanup
      user = Factory::DB.user_with_location
      messages = handle_message("/price o", user)
      messages.size.should eq(1)
      messages[0][:text].should eq("I have information on Oil, Onions; please choose one.")
      messages[0][:reply_markup].as(TelegramBot::InlineKeyboardMarkup).inline_keyboard.flatten.size.should eq(2)
    end

    it "should request location before answering prices" do
      DB.cleanup
      user = Factory::DB.user
      messages = handle_message("/price rice", user)
      messages.size.should eq(1)
      messages[0][:text].not_nil!.should contain("Before I can provide prices information, I need to know where you are.")
    end

  end

  describe "via text" do

    it "should return commodity price" do
      DB.cleanup
      user = Factory::DB.user_with_location
      messages = handle_message("How much is rice?", user, understand: response({"intent" => "QueryPrice", "commodity" => "rice"}))

      messages.size.should eq(1)
      messages[0][:text].should match(/Rice.+85.+DZD per KG.+Algiers.+/)
    end

    it "should return commodity price even without intent" do
      DB.cleanup
      user = Factory::DB.user_with_location
      messages = handle_message("cost of rice", user, understand: response({"commodity" => "rice"}))

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

    it "should match commodity even if not recognised by wit" do
      DB.cleanup
      bot = Bot.new
      user = Factory::DB.user_with_location

      handle_message("How much?", user: user, bot: bot, understand: response({"intent" => "QueryPrice"}))
      handle_message("rice", user: user, bot: bot, understand: response())

      bot.messages.size.should eq(2)
      bot.messages[0][:text].should match(/What do you want to know the price of\?/)
      bot.messages[1][:text].should match(/Rice.+85.+DZD per KG.+Algiers.+/)
    end

    it "should ask the user to repeat the commodity if it failed to match" do
      DB.cleanup
      bot = Bot.new
      user = Factory::DB.user_with_location

      handle_message("How much?", user: user, bot: bot, understand: response({"intent" => "QueryPrice"}))
      handle_message("foobar", user: user, bot: bot, understand: response())
      handle_message("rice", user: user, bot: bot, understand: response({"commodity" => "rice"}))

      bot.messages.size.should eq(3)
      bot.messages[0][:text].should match(/What do you want to know the price of\?/)
      bot.messages[1][:text].should match(/Sorry, I did not understand/)
      bot.messages[2][:text].should match(/Rice.+85.+DZD per KG.+Algiers.+/)
    end

    it "should request location before answering prices" do
      DB.cleanup
      user = Factory::DB.user
      messages = handle_message("How much is rice?", user, understand: response({"intent" => "QueryPrice", "commodity" => "rice"}))
      messages.size.should eq(1)
      messages[0][:text].not_nil!.should contain("Before I can provide prices information, I need to know where you are.")
    end

  end

  describe "data" do

    {% for commodity in ["Exchange rate",
                         "Wage (non-qualified labour)",
                         "Wage (non-qualified labour, agricultural)",
                         "Wage (non-qualified labour, non-agricultural)",
                         "Wage (qualified labour)"] %}
    it "should not import {{ commodity.id }}" do
      MvamBot::Price.commodity_names.should_not contain({{ commodity }})
    end
    {% end %}

  end

end
