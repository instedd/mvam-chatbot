require "./spec_helper"

include MvamBot::Spec
include MvamBot::Spec::Wit

describe ::MvamBot::Bot do

  describe "rescheduling surveys" do

    {% for label, hours in { "in two hours" => 2, "in six hours" => 6, "tomorrow" => 24 } %}
    it "should reschedule survey based on reschedule option" do
      MvamBot::Spec::DB.cleanup
      user = Factory::DB.user(:with_conversation, conversation_step: "survey/check_availability")

      messages = handle_message({{ label }}, user: user)
      messages.size.should eq(1)
      messages[0][:text].should contain("I'll talk to you {{ label.id }}")

      user.survey_at.not_nil!.should be_close(Time.utc_now + {{ hours }}.hours, 1.minute)
    end
    {% end %}

    it "should clear scheduled survey when survey executes" do
      MvamBot::Spec::DB.cleanup
      user = Factory::DB.user(:with_conversation, survey_at: Time.utc_now + 1.hour)
      user.survey_at.should_not eq(nil)

      handle_message("Hello", user: user, understand: response({ "intent" => "Salutation" }))
      user.survey_at.should eq(nil)
    end

    it "should run surveys for scheduled users" do
      MvamBot::Spec::DB.cleanup
      user1 = Factory::DB.user(id: 1000, survey_at: Time.utc_now - 1.day)
      user2 = Factory::DB.user(id: 1001, survey_at: Time.utc_now - 1.hour)
      user3 = Factory::DB.user(id: 1002, survey_at: Time.utc_now + 1.hour)
      user4 = Factory::DB.user(id: 1003, survey_at: nil)

      bot = Bot.new
      scheduler = MvamBot::Surveys::Scheduler.new(bot)
      scheduler.run_surveys

      messages = bot.messages
      messages.size.should eq(2)

      messages[0][:chat_id].should eq(1000)
      messages[1][:chat_id].should eq(1001)
      messages[0][:text].not_nil!.should contain("I would like to ask you a few questions if you have a minute")
      messages[0][:text].not_nil!.should contain("I would like to ask you a few questions if you have a minute")

      MvamBot::User.find!(1000).survey_at.should eq(nil)
      MvamBot::User.find!(1001).survey_at.should eq(nil)
      MvamBot::User.find!(1002).survey_at.not_nil!.should be_close(Time.utc_now + 1.hour, 1.minute)
      MvamBot::User.find!(1003).survey_at.should eq(nil)
    end

  end

end
