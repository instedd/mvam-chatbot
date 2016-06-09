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

      user.conversation_step.not_nil!.should contain("survey/ask_gender")

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

      user = Factory::DB.user_with_location(conversation_step: "survey/ask_roof_photo")
      user.conversation_state["age"] = 30i64
      user.conversation_state["gender"] = "male"
      user.conversation_state["enough_food"] = "Yes"
      user.conversation_session_id = "TEST_SESSION_ID"
      user.conversation_at = Time.utc_now

      messages = handle_message("No", user: user, bot: bot, messages: { "No" => response({"intent" => "AnswerNo"}) })
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
      messages = handle_message("Ok", user: user, bot: bot, messages: { "Ok" => response({"intent" => "AnswerYes"}) })

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
      messages = handle_message("Ok", user: user, bot: bot, messages: { "Ok" => response({"intent" => "AnswerYes"}) })

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
      messages = handle_message("no", user: user, bot: bot, messages: { "no" => response({"intent" => "AnswerNo"}) })

      messages.size.should eq(2)
      messages[0][:text].should contain("No problem")
      messages[1][:text].downcase.should contain("thank you for your answers")

      responses = MvamBot::SurveyResponse.for_user(user.id)
      responses.size.should eq(1)
      responses[0].data.should eq({} of String => String)
    end

    it "should support a picture upload after a confirmation" do
      DB.cleanup
      bot = Bot.new

      user = Factory::DB.user(:with_location, :with_conversation, conversation_step: "survey/ask_roof_photo")
      handle_message("sure", user: user, bot: bot, messages: { "sure" => response({"intent" => "AnswerYes"}) })
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

    describe "geolocation" do
      context "user with previously known lat/lng" do
        it "should skip asking user for location if we already know it" do
          DB.cleanup
          bot = Bot.new
          user = Factory::DB.user(conversation_step: "survey/ask_gender", location_lat: 10.0, location_lng: 20.0)
          user.conversation_session_id = "TEST_SESSION_ID"

          messages = handle_message("I am a man!", user: user, bot: bot, messages: { "I am a man!" => response({"gender" => "male"}) })
          messages.size.should eq(1)
          user.conversation_step.not_nil!.should contain("survey/ask_enough_food")
        end

        it "should store user location if we already know it" do
          DB.cleanup
          bot = Bot.new
          user = Factory::DB.user(conversation_step: "survey/ask_gender", location_lat: 10.0, location_lng: 20.0)
          user.conversation_session_id = "TEST_SESSION_ID"

          handle_message("I am a man!", user: user, bot: bot, messages: { "I am a man!" => response({"gender" => "male"}) })

          responses = MvamBot::SurveyResponse.for_user(user.id)
          responses[0].data.should eq({"gender" => "male", "lat" => user.location_lat, "lng" => user.location_lng})
        end
      end

      context "user without previously known lat/lng" do
        it "should ask for gps access" do
          DB.cleanup
          bot = Bot.new
          user = Factory::DB.user(conversation_step: "survey/ask_gender")
          user.conversation_session_id = "TEST_SESSION_ID"

          messages = handle_message("I am a man!", user: user, bot: bot, messages: { "I am a man!" => response({"gender" => "male"}) })
          messages.size.should eq(1)
          reply_buttons(messages[0]).should eq(["Sure", "Not really"])
          user.conversation_step.not_nil!.should contain("survey/ask_gps")
        end

        context "user shares gps position" do
          it "should continue to next step if user shares gps position" do
            DB.cleanup
            bot = Bot.new
            user = Factory::DB.user(conversation_step: "survey/ask_gps")
            user.conversation_session_id = "TEST_SESSION_ID"

            messages = handle_message("", user: user, bot: bot, location: {10.0, 20.0})
            messages.size.should eq(1)
            user.conversation_step.not_nil!.should contain("survey/ask_enough_food")

            responses = MvamBot::SurveyResponse.for_user(user.id)
            responses[0].data.should eq({"lat" => 10.0, "lng" => 20.0})
          end
        end

        context "if user refuses to share gps position" do
          it "should ask the user to enter his location as text" do
            DB.cleanup
            bot = Bot.new
            user = Factory::DB.user(conversation_step: "survey/ask_gps")
            user.conversation_session_id = "TEST_SESSION_ID"

            messages = handle_message("Not really", user: user, bot: bot)
            messages.size.should eq(1)
            messages[0][:text].should eq("What's the name of your nearest city?")

            user.conversation_step.not_nil!.should contain("survey/ask_location_name")
          end

          context "geolocation yields a single result" do
            it "should store response and continue to next question" do
              DB.cleanup
              bot = Bot.new
              user = Factory::DB.user(conversation_step: "survey/ask_location_name")
              user.conversation_session_id = "TEST_SESSION_ID"

              messages = handle_message("I live in Buenos Aires",
                                        user: user,
                                        bot: bot,
                                        messages: { "I live in Buenos Aires" => response({"location" => "Buenos Aires"}) },
                                        geocoding: {"Buenos Aires" => {"Buenos Aires, Argentina" => {10.0, 20.0}}})

              messages.size.should eq(1)
              user.conversation_step.not_nil!.should contain("survey/ask_enough_food")

              responses = MvamBot::SurveyResponse.for_user(user.id)
              responses[0].data.should eq({"lat" => 10.0, "lng" => 20.0, "location_name" => "Buenos Aires"})
            end
          end

          context "geolocation yields no result" do
            it "continue to next question" do
              DB.cleanup
              bot = Bot.new
              user = Factory::DB.user(conversation_step: "survey/ask_location_name")
              user.conversation_session_id = "TEST_SESSION_ID"

              messages = handle_message("I live in Buenos Aires",
                                        user: user,
                                        bot: bot,
                                        messages: { "I live in Buenos Aires" => response({"location" => "Buenos Aires"}) })

              messages.size.should eq(1)
              user.conversation_step.not_nil!.should contain("survey/ask_enough_food")

              responses = MvamBot::SurveyResponse.for_user(user.id)
              responses[0].data.should eq({"location_name" => "Buenos Aires"})
            end

          end

          context "geolocation yields multiple results" do
            it "asks the user to select his real location" do
              DB.cleanup
              bot = Bot.new
              user = Factory::DB.user(conversation_step: "survey/ask_location_name")
              user.conversation_session_id = "TEST_SESSION_ID"

              messages = handle_message("I live in Buenos Aires",
                                        user: user,
                                        bot: bot,
                                        messages: { "I live in Buenos Aires" => response({"location" => "Buenos Aires"}) },
                                        geocoding: {"Buenos Aires" => {
                                                      "Ciudad de Buenos Aires, Argentina" => {10.0, 20.0},
                                                      "Provincia de Buenos Aires, Argentina" => {15.0, 20.0}
                                        }})

              user.conversation_step.not_nil!.should contain("survey/ask_which_location")

              messages.size.should eq(1)
              reply_buttons(messages[0]).should eq([
                "Ciudad de Buenos Aires, Argentina",
                "Provincia de Buenos Aires, Argentina"
              ])
            end

            it "stores position of selected geolocation result" do
              DB.cleanup
              bot = Bot.new
              user = Factory::DB.user(conversation_step: "survey/ask_which_location")
              user.conversation_session_id = "TEST_SESSION_ID"

              messages = handle_message("Ciudad de Buenos Aires, Argentina",
                                        user: user,
                                        bot: bot,
                                        geocoding: {"Ciudad de Buenos Aires, Argentina" => {
                                                      "Ciudad de Buenos Aires, Argentina" => {10.0, 20.0},
                                                      "Provincia de Buenos Aires, Argentina" => {15.0, 20.0}
                                        }})

              user.conversation_step.not_nil!.should contain("survey/ask_enough_food")

              responses = MvamBot::SurveyResponse.for_user(user.id)
              responses[0].data.should eq({"lat" => 10.0, "lng" => 20.0})
            end
          end
        end
      end
    end
  end

end
