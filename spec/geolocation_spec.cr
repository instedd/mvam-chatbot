require "./spec_helper"

include MvamBot::Spec
include MvamBot::Spec::Wit

describe ::MvamBot::Topics::Geolocation do
  context "unknown gps position" do
    it "requests user GPS position" do
      DB.cleanup
      user = Factory::DB.user
      messages = handle_message("/start location", user)
      messages.size.should eq(1)

      messages[0][:text].should eq("Could you share your current position with us?")
      reply_buttons(messages[0]).should eq(["Sure", "I'd rather not"])

      user.conversation_step.should eq("location/gps_request")
    end

    context "user accepts to share position" do
      it "starts step by step selection if there is no close match" do
        DB.cleanup
        user = user_at_step "location/gps_request"
        messages = handle_message("", user, location: {atlantic_ocean_position[0], atlantic_ocean_position[1]})
        messages.size.should eq(1)
        messages[0][:text].should eq("What country do you live in?")
        reply_buttons(messages[0]).size.should eq(MvamBot::Location::Adm0.cache.size)

        user.conversation_step.should eq("location/adm0")
      end

      it "uses closest location if there is a single close match" do
        DB.cleanup
        Location.create_test_locations
        user = user_at_step "location/gps_request"

        lat = Location.esquel.lat.not_nil!
        lng = Location.esquel.lng.not_nil!

        messages = handle_message("", user, location: {lat, lng})
        messages.size.should eq(1)
        messages[0][:text].not_nil!.should contain("I will send you food prices from Esquel (Chubut, Argentina)")

        user.conversation_step.should eq(nil)

        location_path = [user.location_adm0_id, user.location_adm1_id, user.location_mkt_id]
        location_path.should eq([
          Location.argentina.id,
          Location.chubut.id,
          Location.esquel.id
        ])
      end

      it "asks user to choose if there are multiple close matches" do
        DB.cleanup
        Location.create_test_locations
        user = user_at_step "location/gps_request"

        lat = Location.vicente_lopez.lat.not_nil!
        lng = Location.vicente_lopez.lng.not_nil!

        messages = handle_message("", user, location: {lat, lng})
        messages.size.should eq(1)
        messages[0][:text].should eq("Which city you like information from?")
        reply_buttons(messages[0]).should eq(["Vicente Lopez", "Olivos"])

        user.conversation_step.should eq("location/gps_multiple_matches")
      end
    end

    context "user refuses to share position" do
      it "starts step by step selection if there is no close match" do
        DB.cleanup
        user = user_at_step "location/gps_request"
        messages = handle_message("", user, location: nil)
        messages.size.should eq(1)
        messages[0][:text].should eq("What country do you live in?")
        reply_buttons(messages[0]).size.should eq(MvamBot::Location::Adm0.cache.size)

        user.conversation_step.should eq("location/adm0")
      end
    end
  end

  context "known GPS position" do
    context "GPS position is recent" do
      context "no previous administrative location was assigned" do
        # if a recent gps record is available but no location was
        # assigned it means that either there was no close location
        # or there many, case in which we should ask the user to choose
        it "asks user to choose if there are multiple close matches" do
          DB.cleanup
          Location.create_test_locations

          user = user_near_location(Location.vicente_lopez, Time.now - 1.minute)

          messages = handle_message("/start location", user)
          messages.size.should eq(1)
          messages[0][:text].should eq("Which city you like information from?")
          reply_buttons(messages[0]).should eq(["Vicente Lopez", "Olivos"])

          user.conversation_step.should eq("location/gps_multiple_matches")
        end
      end

      context "previous administrative location was assigned" do
        # we asume that receiving a '/location' msg when a recent gps
        # record is present means that the user wants to override our match
        it "starts step by step selection" do
          DB.cleanup
          Location.create_test_locations

          user = user_near_location(Location.esquel, Time.now - 1.minute)
          user.location_adm0_id = Location.argentina.id
          user.location_adm1_id = Location.chubut.id
          user.location_mkt_id = Location.esquel.id

          messages = handle_message("/start location", user)
          messages.size.should eq(1)
          messages[0][:text].should eq("What country do you live in?")
          reply_buttons(messages[0]).size.should eq(MvamBot::Location::Adm0.all.size)

          user.conversation_step.should eq("location/adm0")
          user.location_lat.should eq(nil)
          user.location_lng.should eq(nil)
          user.gps_timestamp.should eq(nil)
        end
      end
    end

    context "GPS position is old" do
      # receiving a /start location msg with an old position could
      # mean that the user moved somewhere else, so we try with the
      # gps again
      it "should forget last postition and request a new one" do
        DB.cleanup
        Location.create_test_locations

        user = user_near_location(Location.esquel, Time.now - 1.week)

        messages = handle_message("/start location", user)
        messages.size.should eq(1)

        messages[0][:text].should eq("Could you share your current position with us?")
        reply_buttons(messages[0]).should eq(["Sure", "I'd rather not"])

        user.conversation_step.should eq("location/gps_request")
        user.location_lat.should eq(nil)
        user.location_lng.should eq(nil)
        user.gps_timestamp.should eq(nil)
      end
    end
  end
end

def user_at_step(step)
  Factory::DB.user.tap do |u|
    u.conversation_step = step
    u.update
  end
end

def user_near_location(mkt : MvamBot::Location::Mkt, gps_timestamp = nil)
  Factory::DB.user.tap do |u|
    u.location_lat = mkt.lat.not_nil!
    u.location_lng = mkt.lng.not_nil!
    u.gps_timestamp = gps_timestamp
  end
end

def atlantic_ocean_position
  {-12.727552, -18.021674}
end
