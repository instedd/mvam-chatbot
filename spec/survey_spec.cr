require "./spec_helper"

include MvamBot::Spec
include MvamBot::Spec::Wit

describe ::MvamBot::Bot do

  describe "surveys" do

    it "should start survey on a start-survey action" do
      DB.cleanup
      bot = Bot.new
      user = Factory::DB.user_with_location

      messages = handle_message("/start", user: user, bot: bot) do |msg, sid, actions|
        context = actions.merge(sid, user.conversation_state, entities({ "intent" => "AnswerYes"}), msg, 0.9)
        actions.custom("start-survey", sid, context, 0.9)
      end

      messages.size.should eq(1)
      messages[0][:text].should eq("How old are you?")

      user.conversation_step.should eq("survey/ask_age")
    end

    it "should move to the next step on an extracted entity" do
      DB.cleanup
      bot = Bot.new
      user = Factory::DB.user_with_location(conversation_step: "survey/ask_age")

      messages = handle_message("I am 30 years old", user: user, bot: bot, messages: { "I am 30 years old" => response({"number" => 30}) })

      messages.size.should eq(1)
      messages[0][:text].should eq("Are you a man or a woman?")

      user.conversation_step.should eq("survey/ask_gender")

      responses = MvamBot::SurveyResponse.for_user(user.id)
      responses.size.should eq(1)

      responses[0].user_id.should eq(user.id)
      responses[0].session_id.should eq(user.conversation_session_id)
      responses[0].data.should eq({ "age" => 30 })
      responses[0].completed.should eq(false)
    end

    it "should end the survey and save collected data" do
      DB.cleanup
      bot = Bot.new

      user = Factory::DB.user_with_location(conversation_step: "survey/ask_gender")
      user.conversation_state["age"] = 30i64
      user.conversation_session_id = "TEST_SESSION_ID"
      user.conversation_at = Time.utc_now

      messages = handle_message("I am a man", user: user, bot: bot, messages: { "I am a man" => response({"gender" => "male"}) })

      messages.size.should eq(1)
      messages[0][:text].should contain("Thank you")

      responses = MvamBot::SurveyResponse.for_user(user.id)
      responses.size.should eq(1)

      responses[0].user_id.should eq(user.id)
      responses[0].session_id.should eq("TEST_SESSION_ID")
      responses[0].data.should eq({ "gender" => "male", "age" => 30 })
      responses[0].completed.should eq(true)
    end


  end

end
