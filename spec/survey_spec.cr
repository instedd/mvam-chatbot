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
      user.conversation_session_id = "TEST_SESSION_ID"

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

    it "should extract boolean answer from intent" do
      DB.cleanup
      bot = Bot.new

      user = Factory::DB.user_with_location(conversation_step: "survey/ask_enough_food")
      user.conversation_at = Time.utc_now
      user.conversation_session_id = "TEST_SESSION_ID"

      messages = handle_message("Yeah", user: user, bot: bot, messages: { "Yeah" => response({"intent" => "AnswerYes"}) })
      messages.size.should eq(1)

      responses = MvamBot::SurveyResponse.for_user(user.id)
      responses.size.should eq(1)
      responses[0].user_id.should eq(user.id)
      responses[0].session_id.should eq(user.conversation_session_id)
      responses[0].data.should eq({ "enough_food" => "Yes" })
    end

    it "should extract boolean answer from message" do
      DB.cleanup
      bot = Bot.new

      user = Factory::DB.user_with_location(conversation_step: "survey/ask_enough_food")
      user.conversation_at = Time.utc_now
      user.conversation_session_id = "TEST_SESSION_ID"

      messages = handle_message("Yes", user: user, bot: bot)
      messages.size.should eq(1)

      responses = MvamBot::SurveyResponse.for_user(user.id)
      responses.size.should eq(1)
      responses[0].user_id.should eq(user.id)
      responses[0].session_id.should eq(user.conversation_session_id)
      responses[0].data.should eq({ "enough_food" => "Yes" })
    end

    it "should end the survey collecting all data" do
      DB.cleanup
      bot = Bot.new

      user = Factory::DB.user_with_location(conversation_step: "survey/ask_enough_food")
      user.conversation_state["age"] = 30i64
      user.conversation_state["gender"] = "male"
      user.conversation_session_id = "TEST_SESSION_ID"
      user.conversation_at = Time.utc_now

      messages = handle_message("Yes", user: user, bot: bot)
      messages.size.should eq(1)
      messages[0][:text].should contain("Thank you for your answers")

      responses = MvamBot::SurveyResponse.for_user(user.id)
      responses.size.should eq(1)

      responses[0].user_id.should eq(user.id)
      responses[0].session_id.should eq("TEST_SESSION_ID")
      responses[0].data.should eq({ "gender" => "male", "age" => 30, "enough_food" => "Yes" })
      responses[0].completed.should eq(true)
    end


  end

end
