module MvamBot::Topics
  class Geolocation
    GPS_MATCH_LIMIT  =  5
    GPS_MATCH_RADIUS = 50

    getter user : MvamBot::User
    getter messenger
    getter message

    def initialize(@messenger : MvamBot::UserMessenger, @message : MvamBot::Message)
      @user = @messenger.user
    end

    def self.handles?(user, message)
      message.text == "/start location" || message.text == "/location" || user.conversation_step =~ /location\//
    end

    def handle
      MvamBot::Scheduler.cancel("geolocation/#{user.id}")
      if message.text == "/start location" || message.text == "/location"
        start
      elsif user.conversation_step == "location/gps_request"
        handle_gps_request
      elsif user.conversation_step == "location/gps_multiple_matches"
        handle_gps_multiple_matches
      elsif user.conversation_step == "location/adm0"
        handle_location_adm0
      elsif user.conversation_step == "location/adm1"
        handle_location_adm1
      elsif user.conversation_step == "location/mkt"
        handle_location_mkt
      end
    end

    def start(extra_text = nil)
      if user.position_set_recently?
        if user.location_adm0_id
          user.clear_all_location_data
          request_location_adm0(extra_text)
        else
          match_location_from_gps
        end
      else
        user.clear_all_location_data
        user.conversation_step = "location/gps_request"

        messenger.answer_with_location_request("#{extra_text}Could you share your current position with us?", "Sure", "I'd rather not")

        schedule_retry_ask_gps
      end
    end

    def schedule_retry_ask_gps
      MvamBot::Scheduler.schedule("geolocation/#{user.id}", 30) do
        messenger.answer_with_location_request("Sorry, I didn't get anything. Let's try again...", "Share my position", "Skip this and continue")
      end
    end

    def handle_gps_request
      if message.location
        user.set_gps_position(message.location.not_nil!.latitude, message.location.not_nil!.longitude)
        match_location_from_gps
      else
        request_location_adm0
      end
    end

    def handle_gps_multiple_matches
      matches = nearby_mkts(user.location_lat.not_nil!, user.location_lng.not_nil!)
      selection = matches.map(&.first).find { |m| m.name == message.text }

      if selection
        set_location_from_gps_match(selection)
      else
        request_location_adm0
      end
    end

    def handle_location_adm0
      if location = Location::Adm0.find_by_name(message.text)
        user.location_adm0_id = location.id
        request_location_adm1(location)
      else
        messenger.answer_with_keyboard "Sorry, I do not have information on #{message.text}. Please pick a country from the list.", Location::Adm0.all.map(&.name).sort
      end
    end

    def handle_location_adm1
      if location = Location::Adm1.find_by_name(message.text, user.location_adm0_id.not_nil!)
        user.location_adm1_id = location.id
        request_location_mkt(location)
      else
        messenger.answer_with_keyboard "Sorry, I do not have information on #{message.text}. Please pick a region from the list.", Location::Adm1.where_adm0_id(user.location_adm0_id.not_nil!).map(&.name).sort
      end
    end

    def handle_location_mkt
      if location = Location::Mkt.find_by_name(message.text, user.location_adm1_id.not_nil!)
        user.location_mkt_id = location.id
        user.conversation_step = nil
        answer_location_complete(location)
      else
        messenger.answer_with_keyboard "Sorry, I do not have information on #{message.text}. Please pick a city from the list.", Location::Mkt.where_adm1_id(user.location_adm1_id.not_nil!).map(&.name).sort
      end
    end

    def match_location_from_gps
      matches = nearby_mkts(user.location_lat.not_nil!, user.location_lng.not_nil!)

      if matches.empty?
        request_location_adm0
      elsif matches.size > 1
        user.conversation_step = "location/gps_multiple_matches"
        messenger.answer_with_keyboard "Which city would you like information from?", matches.map(&.first.name)
      else
        mkt = matches[0][0]
        set_location_from_gps_match(mkt)
      end
    end

    def nearby_mkts(latitude, longitude)
      MvamBot::Location::Mkt.around(latitude, longitude, count: GPS_MATCH_LIMIT, kilometers: GPS_MATCH_RADIUS)
    end

    def set_location_from_gps_match(mkt)
      user.location_adm0_id = mkt.adm0_id
      user.location_adm1_id = mkt.adm1_id
      user.location_mkt_id = mkt.id

      user.conversation_step = nil
      answer_location_complete(mkt)
    end

    def request_location_adm0(extra_text = nil)
      user.conversation_step = "location/adm0"
      messenger.answer_with_keyboard "#{extra_text}What country do you live in?", Location::Adm0.all.map(&.name).sort
    end

    def request_location_adm1(location_adm0)
      locations = Location::Adm1.where_adm0_id(location_adm0.id)
      if locations.size == 0
        user.conversation_step = nil
        answer_location_complete(location_adm0)
      elsif locations.size == 1
        location_adm1 = locations.first
        user.location_adm1_id = location_adm1.id
        request_location_mkt(location_adm1)
      else
        user.conversation_step = "location/adm1"
        messenger.answer_with_keyboard "And where in #{location_adm0.name} are you?", locations.map(&.name).sort
      end
    end

    def request_location_mkt(location_adm1)
      locations = Location::Mkt.where_adm1_id(location_adm1.id)
      if locations.size == 0
        user.conversation_step = nil
        answer_location_complete(location_adm1)
      elsif locations.size == 1
        location_mkt = locations.first
        user.location_mkt_id = location_mkt.id
        user.conversation_step = nil
        answer_location_complete(location_mkt)
      else
        user.conversation_step = "location/mkt"
        messenger.answer_with_keyboard "And which city in #{location_adm1.name} would you like information from?", locations.map(&.name).sort
      end
    end

    private def answer_location_complete(location)
      messenger.answer "Got it, I will send you food prices from #{location.description}. If you want to change it at anytime, just send `/location`."
    end
  end
end
