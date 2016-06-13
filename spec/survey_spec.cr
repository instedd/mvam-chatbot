require "./spec_helper"

include MvamBot::Spec
include MvamBot::Spec::Wit

describe ::MvamBot::Bot do

  describe "surveys" do

    it "should start survey on a start action" do
      DB.cleanup
      bot = Bot.new
      user = Factory::DB.user_with_location

      messages = handle_message("/start", user: user, bot: bot, understand: response({ "intent" => "Salutation" }))

      messages.size.should eq(1)
      messages[0][:text].should contain("I would like to ask you a few questions if you have a minute")

      user.conversation_step.should eq("survey/start")
    end

    it "should not greet the user again when returning from a clarification to the initial step" do
      DB.cleanup
      bot = Bot.new
      user = Factory::DB.user_with_location

      handle_message("/start", user: user, bot: bot, understand: response({ "intent" => "Salutation" }))
      handle_message("Why?", user: user, bot: bot, understand: response({"intent" => "AskWhy"}))
      handle_message("Fine", user: user, bot: bot, understand: response({"yes_no" => "Yes"}))

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

      handle_message("/start", user: user, bot: bot, understand: response({ "intent" => "Salutation" }))
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

      user = Factory::DB.user_with_location(conversation_step: "survey/ask_not_enough_food")
      user.conversation_at = Time.utc_now
      user.conversation_session_id = "TEST_SESSION_ID"

      messages = handle_message("Yeah", user: user, bot: bot, messages: { "Yeah" => response({"yes_no" => "Yes"}) })
      messages.size.should eq(1)

      responses = MvamBot::SurveyResponse.for_user(user.id)
      responses.size.should eq(1)
      responses[0].user_id.should eq(user.id)
      responses[0].session_id.should eq(user.conversation_session_id)
      responses[0].data.should eq({ "not_enough_food" => "Yes" })
    end

    it "should extract boolean answer from message" do
      DB.cleanup
      bot = Bot.new

      user = Factory::DB.user_with_location(conversation_step: "survey/ask_not_enough_food")
      user.conversation_at = Time.utc_now
      user.conversation_session_id = "TEST_SESSION_ID"

      messages = handle_message("Yes", user: user, bot: bot)
      messages.size.should eq(1)

      responses = MvamBot::SurveyResponse.for_user(user.id)
      responses.size.should eq(1)
      responses[0].user_id.should eq(user.id)
      responses[0].session_id.should eq(user.conversation_session_id)
      responses[0].data.should eq({ "not_enough_food" => "Yes" })
    end

    it "should end the survey collecting all data" do
      DB.cleanup
      bot = Bot.new

      user = Factory::DB.user_with_location(conversation_step: "survey/ask_roof_photo")
      user.conversation_state["age"] = 30i64
      user.conversation_state["gender"] = "male"
      user.conversation_state["not_enough_food"] = "Yes"
      user.conversation_session_id = "TEST_SESSION_ID"
      user.conversation_at = Time.utc_now

      messages = handle_message("No", user: user, bot: bot, messages: { "No" => response({"yes_no" => "No"}) })
      messages.last[:text].downcase.should contain("thank you for your answers")

      responses = MvamBot::SurveyResponse.for_user(user.id)
      responses.size.should eq(1)

      responses[0].user_id.should eq(user.id)
      responses[0].session_id.should eq("TEST_SESSION_ID")
      responses[0].data.should eq({ "gender" => "male", "age" => 30, "not_enough_food" => "Yes" })
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

    describe "geolocation" do
      context "user with previously known lat/lng" do
        it "should skip asking user for location if known position is recent enough" do
          DB.cleanup
          bot = Bot.new
          user = Factory::DB.user(conversation_step: "survey/start", location_lat: 10.0, location_lng: 20.0, gps_timestamp: 10.minutes.ago)
          user.conversation_session_id = "TEST_SESSION_ID"

          messages = handle_message("Yeah", user: user, bot: bot, messages: { "Yeah" => response({"yes_no" => "Yes"}) })
          messages.size.should eq(1)
          user.conversation_step.not_nil!.should contain("survey/ask_age")

          responses = MvamBot::SurveyResponse.for_user(user.id)
          responses[0].data.should eq({"lat" => user.location_lat, "lng" => user.location_lng})
        end

        it "should ask the user if his position has changed if known position is not recent enough" do
          DB.cleanup
          bot = Bot.new
          user = Factory::DB.user(conversation_step: "survey/start", location_lat: 10.0, location_lng: 20.0, gps_timestamp: 2.days.ago)
          user.conversation_session_id = "TEST_SESSION_ID"

          geocoder = Geocoder.new
          geocoder.expect_reverse_lookup(10.0, 20.0) { "Buenos Aires" }

          messages = handle_message("Yeah", user: user, bot: bot, understand: response({"yes_no" => "Yes"}), geocoder: geocoder)
          user.conversation_step.not_nil!.should contain("survey/ask_location_changed")

          messages.size.should eq(1)
          messages[0][:text].should eq("Are you still in Buenos Aires?")

          responses = MvamBot::SurveyResponse.for_user(user.id)
        end
      end

      context "user without previously known lat/lng" do
        it "should ask for gps access" do
          DB.cleanup
          bot = Bot.new
          user = Factory::DB.user(conversation_step: "survey/start")
          user.conversation_session_id = "TEST_SESSION_ID"

          messages = handle_message("Yeah", user: user, bot: bot, messages: { "Yeah" => response({"yes_no" => "Yes"}) })
          messages.size.should eq(1)
          reply_buttons(messages[0]).should eq(["Sure", "I'd rather not"])
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
            user.conversation_step.not_nil!.should contain("survey/ask_age")

            responses = MvamBot::SurveyResponse.for_user(user.id)
            responses[0].data.should eq({"lat" => 10.0, "lng" => 20.0})
          end
        end

        context "if user refuses to share gps position" do
          context "user's country is known" do
            it "should ask for location name for geocoding" do
              DB.cleanup
              user = Factory::DB.user_with_location(conversation_step: "survey/ask_gps")
              user.conversation_session_id = "TEST_SESSION_ID"
              adm0_name = MvamBot::Location::Adm0.find(user.location_adm0_id.not_nil!).name

              messages = handle_message("I'd rather not", user: user)
              messages[0][:text].should eq("What's the name of your town?")

              responses = MvamBot::SurveyResponse.for_user(user.id)
              responses[0].data.should eq({"country_name" => adm0_name})

              user.conversation_step.not_nil!.should contain("survey/ask_location_name")
            end
          end

          context "user's country is not known" do
            it "should ask the user to select his country if we don't know it yet" do
              DB.cleanup
              bot = Bot.new
              user = Factory::DB.user(conversation_step: "survey/ask_gps")
              user.conversation_session_id = "TEST_SESSION_ID"

              messages = handle_message("I'd rather not", user: user, bot: bot)
              messages.size.should eq(1)
              messages[0][:text].should eq("What country do you live in?")
              reply_buttons(messages[0]).should eq(MvamBot::Country.all_names)

              user.conversation_step.not_nil!.should contain("survey/ask_country")
            end

            it "should store selected country and ask for location name after country selection" do
              DB.cleanup
              bot = Bot.new
              user = Factory::DB.user(conversation_step: "survey/ask_country")
              user.conversation_session_id = "TEST_SESSION_ID"

              selected_country = MvamBot::Country.all.first

              messages = handle_message(selected_country.name, user: user, bot: bot)
              messages[0][:text].should eq("What's the name of your town?")

              responses = MvamBot::SurveyResponse.for_user(user.id)
              responses[0].data.should eq({"country_name" => selected_country.name})

              user.conversation_step.not_nil!.should contain("survey/ask_location_name")
            end
          end

          context "geolocation yields a single result" do
            it "should store response and continue to next question" do
              DB.cleanup
              bot = Bot.new
              user = Factory::DB.user(conversation_step: "survey/ask_location_name")
              user.conversation_session_id = "TEST_SESSION_ID"
              user.conversation_state["country_name"] = "Argentina"

              geocoder = Geocoder.new
              geocoder.expect_lookup("Buenos Aires", "Argentina") { {"Buenos Aires, Argentina" => {10.0, 20.0}} }

              messages = handle_message("I live in Buenos Aires",
                                        user: user,
                                        bot: bot,
                                        understand: response({"location" => "Buenos Aires"}),
                                        geocoder: geocoder)

              messages.size.should eq(1)
              user.conversation_step.not_nil!.should contain("survey/ask_age")

              responses = MvamBot::SurveyResponse.for_user(user.id)
              responses[0].data.should eq({
                "lat" => 10.0,
                "lng" => 20.0,
                "location_name" => "Buenos Aires",
                "country_name" => "Argentina"
              })
            end
          end

          context "geolocation yields no result" do
            it "continue to next question" do
              DB.cleanup
              bot = Bot.new
              user = Factory::DB.user(conversation_step: "survey/ask_location_name")
              user.conversation_session_id = "TEST_SESSION_ID"
              user.conversation_state["country_name"] = "Argentina"

              messages = handle_message("I live in Buenos Aires",
                                        user: user,
                                        bot: bot,
                                        messages: { "I live in Buenos Aires" => response({"location" => "Buenos Aires"}) })

              messages.size.should eq(1)
              user.conversation_step.not_nil!.should contain("survey/ask_age")

              responses = MvamBot::SurveyResponse.for_user(user.id)
              responses[0].data.should eq({"location_name" => "Buenos Aires", "country_name" => "Argentina"})
            end

          end

          context "geolocation yields multiple results" do
            it "asks the user to select his real location" do
              DB.cleanup
              bot = Bot.new
              user = Factory::DB.user(conversation_step: "survey/ask_location_name")
              user.conversation_session_id = "TEST_SESSION_ID"
              user.conversation_state["country_name"] = "Argentina"

              geocoder = Geocoder.new
              geocoder.expect_lookup("Buenos Aires", "Argentina") do
                {
                  "Ciudad de Buenos Aires, Argentina" => {10.0, 20.0},
                  "Provincia de Buenos Aires, Argentina" => {15.0, 20.0}
                }
              end

              messages = handle_message("I live in Buenos Aires",
                                        user: user,
                                        bot: bot,
                                        understand: response({"location" => "Buenos Aires"}),
                                        geocoder: geocoder)

              user.conversation_step.not_nil!.should contain("survey/ask_which_location")

              messages.size.should eq(1)
              reply_buttons(messages[0]).should eq([
                "Ciudad de Buenos Aires, Argentina",
                "Provincia de Buenos Aires, Argentina",
                "None of the above"
              ])

              responses = MvamBot::SurveyResponse.for_user(user.id)
              responses[0].data["location_name"].should eq("Buenos Aires")
            end

            it "stores position of selected geolocation result" do
              DB.cleanup
              bot = Bot.new
              user = Factory::DB.user(conversation_step: "survey/ask_which_location")
              user.conversation_session_id = "TEST_SESSION_ID"
              user.conversation_state["country_name"] = "Argentina"
              user.conversation_state["location_name"] = "Buenos Aires"

              # TODO: This second lookup could be avoided by persisting all results in conversation state
              geocoder = Geocoder.new
              geocoder.expect_lookup("Buenos Aires", "Argentina") do
                {
                  "Ciudad de Buenos Aires, Argentina" => {10.0, 20.0},
                  "Provincia de Buenos Aires, Argentina" => {15.0, 20.0}
                }
              end

              messages = handle_message("Ciudad de Buenos Aires, Argentina",
                                        user: user,
                                        bot: bot,
                                        geocoder: geocoder)

              user.conversation_step.not_nil!.should contain("survey/ask_age")

              responses = MvamBot::SurveyResponse.for_user(user.id)
              responses[0].data["lat"].should eq(10.0)
              responses[0].data["lng"].should eq(20.0)
            end
          end
        end
      end
    end

    it "presets user administrative location when obtained lat/lng is close tu a known mkt" do
      DB.cleanup
      Location.create_test_locations

      user = Factory::DB.user(conversation_step: "survey/ask_gps")
      user.conversation_session_id = "TEST_SESSION_ID"
      mkt = Location.vicente_lopez

      messages = handle_message("", user: user, location: {mkt.lat.not_nil!, mkt.lng.not_nil!})

      user.location_lat.should eq(mkt.lat)
      user.location_lng.should eq(mkt.lng)

      user.location_mkt_id.should eq(mkt.id)
      user.location_adm1_id.should eq(mkt.adm1_id)
      user.location_adm0_id.should eq(mkt.adm0_id)
    end
  end

end
