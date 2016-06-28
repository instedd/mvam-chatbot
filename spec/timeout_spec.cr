require "./spec_helper"

include MvamBot::Spec
include MvamBot::Spec::Wit

describe ::MvamBot::Bot do

  describe "surveys" do

    it "should ping user after inactivity" do
      DB.cleanup

      user = Factory::DB.user_with_location
      bot = Bot.new

      handle_message("/start", bot: bot, user: user, understand: response({ "intent" => "Salutation" }))

      timeout = scheduled_task(user)
      timeout.should_not eq(nil)
      timeout.not_nil!.run # Are you still there?

      messages = bot.messages
      messages.size.should eq(2)
      messages.last[:text].should eq("Are you still there?")
    end

    it "should go back to previous question after checking presence" do
      DB.cleanup

      user = Factory::DB.user_with_location
      bot = Bot.new

      handle_message("/start", bot: bot, user: user, understand: response({ "intent" => "Salutation" }))
      scheduled_task(user).not_nil!.run # Are you still there?

      handle_message("Yeah", bot: bot, user: user, understand: response({ "yes_no" => "Yes" }))

      messages = bot.messages
      messages.size.should eq(3)
      messages.last[:text].should contain("I would like to ask you a few questions")
    end

    it "should give up if user is not there for a long time" do
      DB.cleanup

      user = Factory::DB.user_with_location
      bot = Bot.new

      handle_message("/start", bot: bot, user: user, understand: response({ "intent" => "Salutation" }))
      scheduled_task(user).not_nil!.run # Are you still there?
      scheduled_task(user).not_nil!.run # Let me know when ready

      messages = bot.messages
      messages.size.should eq(3)
      messages.last[:text].should contain("Let me know when you are ready")

      scheduled_task(user)
    end

    it "should go back to previous question when user returns" do
      DB.cleanup

      user = Factory::DB.user_with_location
      bot = Bot.new

      handle_message("/start", bot: bot, user: user, understand: response({ "intent" => "Salutation" }))
      scheduled_task(user).not_nil!.run # Are you still there?
      scheduled_task(user).not_nil!.run # Let me know when ready

      handle_message("Yeah", bot: bot, user: user, understand: response({ "yes_no" => "Yes" }))

      messages = bot.messages
      messages.size.should eq(4)
      messages.last[:text].should contain("I would like to ask you a few questions")
    end

    it "should go back to previous question after timeout on clarification" do
      DB.cleanup

      user = Factory::DB.user_with_location
      bot = Bot.new

      handle_message("/start", bot: bot, user: user, understand: response({ "intent" => "Salutation" }))
      scheduled_task(user).not_nil!.run # Are you still there?
      scheduled_task(user).not_nil!.run # Let me know when ready

      handle_message("Yeah", bot: bot, user: user, understand: response({ "yes_no" => "Yes" }))

      messages = bot.messages
      messages.size.should eq(4)
      messages.last[:text].should contain("I would like to ask you a few questions")
    end

    it "should not enqueue a timeout on a final state" do
      DB.cleanup
      user = Factory::DB.user(:with_location, conversation_step: "survey/offer_local_news", conversation_session_id: "SESSION_ID")

      handle_message("No", user: user, understand: response({ "yes_no" => "No" }))
      scheduled_task(user)
    end


  end

end

def scheduled_task(user)
  MvamBot::Scheduler.find_task("survey/#{user.id}")
end
