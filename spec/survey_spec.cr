require "./spec_helper"

include MvamBot::Spec
include MvamBot::Spec::Wit

describe ::MvamBot::Bot do

  describe "surveys" do

    it "should start survey on a start action" do
      DB.cleanup
      bot = Bot.new
      user = Factory::DB.user_with_location

      messages = handle_message("/start", user: user, bot: bot) do |msg, sid, actions|
        context = actions.merge(sid, user.conversation_state, entities({ "intent" => "Salutation"}), msg, 0.9)
        actions.custom("start", sid, context, 0.9)
      end

      messages.size.should eq(1)
      messages[0][:text].should contain("I would like to ask you a few questions if you have a minute")

      user.conversation_step.should eq("survey/start")
    end

    it "should not greet the user again when returning from a clarification to the initial step" do
      DB.cleanup
      bot = Bot.new
      user = Factory::DB.user_with_location

      handle_message("/start", user: user, bot: bot) do |msg, sid, actions|
        context = actions.merge(sid, user.conversation_state, entities({ "intent" => "Salutation"}), msg, 0.9)
        actions.custom("start", sid, context, 0.9)
      end

      handle_message("Why?", user: user, bot: bot, messages: { "Why?" => response({"intent" => "AskWhy"}) })
      handle_message("Fine", user: user, bot: bot, messages: { "Fine" => response({"yes_no" => "Yes"}) })

      messages = bot.messages
      messages.size.should eq(3)
      messages[0][:text].should contain("Hello!")
      messages[2][:text].should_not contain("Hello!")

      user.conversation_step.not_nil!.should contain("survey/start")
    end

    it "should not save a survey response if the user refused the survey" do
      DB.cleanup
      bot = Bot.new
      user = Factory::DB.user_with_location

      handle_message("/start", user: user, bot: bot) do |msg, sid, actions|
        context = actions.merge(sid, user.conversation_state, entities({ "intent" => "Salutation"}), msg, 0.9)
        actions.custom("start", sid, context, 0.9)
      end

      handle_message("No", user: user, bot: bot, messages: { "No" => response({"yes_no" => "No"}) })
      handle_message("No", user: user, bot: bot, messages: { "No" => response({"yes_no" => "No"}) })

      messages = bot.messages
      messages.size.should eq(3)
      messages[0][:text].should contain("I would like to ask you a few questions if you have a minute")
      messages[1][:text].should contain("Would you be available later")
      messages[2][:text].should contain("Just say \"hello\" any time if you change your mind")

      user.conversation_step.should eq(nil)
      MvamBot::SurveyResponse.for_user(user.id).size.should eq(0)
    end

    it "should move to the next step on an extracted entity" do
      DB.cleanup
      bot = Bot.new
      user = Factory::DB.user_with_location(conversation_step: "survey/ask_age")
      user.conversation_session_id = "TEST_SESSION_ID"

      messages = handle_message("I am 30 years old", user: user, bot: bot, messages: { "I am 30 years old" => response({"number" => 30}) })

      messages.size.should eq(1)
      messages[0][:text].should eq("Are you a man or a woman?")

      user.conversation_step.not_nil!.should contain("survey/ask_gender")

      responses = MvamBot::SurveyResponse.for_user(user.id)
      responses.size.should eq(1)

      responses[0].user_id.should eq(user.id)
      responses[0].session_id.should eq(user.conversation_session_id)
      responses[0].data.should eq({ "age" => 30 })
      responses[0].completed.should eq(false)
    end

    it "should extract boolean answer" do
      DB.cleanup
      bot = Bot.new

      user = Factory::DB.user_with_location(conversation_step: "survey/ask_enough_food")
      user.conversation_at = Time.utc_now
      user.conversation_session_id = "TEST_SESSION_ID"

      messages = handle_message("Yeah", user: user, bot: bot, messages: { "Yeah" => response({"yes_no" => "Yes"}) })
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

      user = Factory::DB.user_with_location(conversation_step: "survey/ask_roof_photo")
      user.conversation_state["age"] = 30i64
      user.conversation_state["gender"] = "male"
      user.conversation_state["enough_food"] = "Yes"
      user.conversation_session_id = "TEST_SESSION_ID"
      user.conversation_at = Time.utc_now

      messages = handle_message("No", user: user, bot: bot, messages: { "No" => response({"yes_no" => "No"}) })
      messages.last[:text].downcase.should contain("thank you for your answers")

      responses = MvamBot::SurveyResponse.for_user(user.id)
      responses.size.should eq(1)

      responses[0].user_id.should eq(user.id)
      responses[0].session_id.should eq("TEST_SESSION_ID")
      responses[0].data.should eq({ "gender" => "male", "age" => 30, "enough_food" => "Yes" })
      responses[0].completed.should eq(true)
    end

    it "should support asking why and then going back to the survey" do
      DB.cleanup
      bot = Bot.new

      user = Factory::DB.user_with_location(conversation_step: "survey/ask_gender")
      user.conversation_session_id = "TEST_SESSION_ID"
      user.conversation_at = Time.utc_now

      handle_message("Why?", user: user, bot: bot, messages: { "Why?" => response({"intent" => "AskWhy"}) })
      messages = handle_message("Ok", user: user, bot: bot, messages: { "Ok" => response({"yes_no" => "Yes"}) })

      messages.size.should eq(2)
      messages[0][:text].should contain("because we are tracking food security")
      messages[1][:text].should contain("Are you a man or a woman?")

      user.conversation_step.not_nil!.should contain("survey/ask_gender")
    end

    it "should support asking why and who and then going back to the survey" do
      DB.cleanup
      bot = Bot.new

      user = Factory::DB.user_with_location(conversation_step: "survey/ask_gender")
      user.conversation_session_id = "TEST_SESSION_ID"
      user.conversation_at = Time.utc_now

      handle_message("Why?", user: user, bot: bot, messages: { "Why?" => response({"intent" => "AskWhy"}) })
      handle_message("And who are you?", user: user, bot: bot, messages: { "And who are you?" => response({"intent" => "AskWho"}) })
      messages = handle_message("Ok", user: user, bot: bot, messages: { "Ok" => response({"yes_no" => "Yes"}) })

      messages.size.should eq(3)
      messages[0][:text].should contain("because we are tracking food security")
      messages[1][:text].should contain("WFP bot assistant")
      messages[2][:text].should contain("Are you a man or a woman?")

      user.conversation_step.not_nil!.should contain("survey/ask_gender")
    end

    it "should support a picture upload" do
      DB.cleanup
      bot = Bot.new

      user = Factory::DB.user(:with_location, :with_conversation, conversation_step: "survey/ask_roof_photo")
      messages = handle_message(photo: "myphoto", user: user, bot: bot)

      messages.size.should eq(1)
      messages[0][:text].downcase.should contain("thank you for your answers")

      responses = MvamBot::SurveyResponse.for_user(user.id)
      responses.size.should eq(1)
      responses[0].user_id.should eq(user.id)
      responses[0].data.should eq({ "roof_photo" => "photo://myphoto" })

      file = MvamBot::DataFile.find("myphoto").not_nil!
      file.id.should eq("myphoto")
      file.user_id.should eq(user.id)
      file.kind.should eq("image")
      file.extension.should eq("jpg")
      file.data.should_not eq(nil)
    end

    it "should support refusing uploading a picture" do
      DB.cleanup
      bot = Bot.new

      user = Factory::DB.user(:with_location, :with_conversation, conversation_step: "survey/ask_roof_photo")
      user.conversation_state["gender"] = "male"

      messages = handle_message("no", user: user, bot: bot, messages: { "no" => response({"yes_no" => "No"}) })

      messages.size.should eq(2)
      messages[0][:text].should contain("No problem")
      messages[1][:text].downcase.should contain("thank you for your answers")

      responses = MvamBot::SurveyResponse.for_user(user.id)
      responses.size.should eq(1)
      responses[0].data.should eq({"gender" => "male"})
    end

    it "should support a picture upload after a confirmation" do
      DB.cleanup
      bot = Bot.new

      user = Factory::DB.user(:with_location, :with_conversation, conversation_step: "survey/ask_roof_photo")
      handle_message("sure", user: user, bot: bot, messages: { "sure" => response({"yes_no" => "Yes"}) })
      messages = handle_message(photo: "myphoto", user: user, bot: bot)

      messages.size.should eq(1)
      messages[0][:text].downcase.should contain("thank you for your answers")

      responses = MvamBot::SurveyResponse.for_user(user.id)
      responses.size.should eq(1)
      responses[0].user_id.should eq(user.id)
      responses[0].data.should eq({ "roof_photo" => "photo://myphoto" })

      file = MvamBot::DataFile.find("myphoto").not_nil!
      file.id.should eq("myphoto")
      file.user_id.should eq(user.id)
      file.kind.should eq("image")
      file.extension.should eq("jpg")
      file.data.should_not eq(nil)
    end


  end

end
