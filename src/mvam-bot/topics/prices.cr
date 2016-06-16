module MvamBot
  module Topics
    class Prices

      include MvamBot::WitUtils
      extend MvamBot::WitUtils

      getter user : MvamBot::User
      getter messenger : MvamBot::UserMessenger
      getter message : TelegramBot::Message
      getter wit : Wit::MessageResponse?

      @@commodity_names : Array(String)?

      delegate answer, answer_with_inline, @messenger

      def initialize(@messenger : MvamBot::UserMessenger, @message : TelegramBot::Message, @wit : Wit::MessageResponse? = nil)
        @user = @messenger.user
      end

      def handle
        if user.location_adm0_id.nil?
          if user.position_set_recently?
            answer("I could not find any marketplace near your location. Please use /location to select another one.")
          else
            geolocation.start(extra_text: "Before I can provide prices information, I need to know where you are. ")
          end
        elsif message.text =~ /^\/price(.*)/
          handle_command($~[1])
        else
          handle_text
        end
      end

      def handle_command(query)
        if query.strip.empty?
          sample_text = (sample = sample_price) ? " For example, try sending `/price #{sample}`." : ""
          return answer("Send `/price FOOD` to get the prices of a food near you." + sample_text)
        end

        handle_price(query.strip)
      end

      def handle_text
        intent = extract_value(entities, "intent")

        if commodity = extract_value(entities, "commodity")
          handle_price(commodity.to_s)
        elsif is_commodity?(message.text)
          handle_price(message.text.not_nil!)
        elsif intent == INTENT_QUERY_PRICE
          user.conversation_step = "queryprice/"
          sample_text = (sample = sample_price) ? " For example, you can ask for `#{sample}`." : ""
          answer("What do you want to know the price of?" + sample_text)
        elsif user.conversation_step =~ /^queryprice/ && intent.nil?
          sample_text = (sample = sample_price) ? " For example, you can ask for `#{sample}`." : ""
          answer("Sorry, I did not understand which price you are looking for." + sample_text)
        end
      end

      def sample_price
        return nil if user.location_adm0_id.nil?
        sample_prices = Price.search_by_commodity_id(nil, limit: 1, adm0_id: user.location_adm0_id, adm1_id: user.location_adm1_id, mkt_id: user.location_mkt_id)
        sample_prices.empty? ? nil : sample_prices[0].short_commodity_name.downcase
      end

      private def handle_price(query)
        user.conversation_step = nil

        # Get prices for the user query
        prices = prices_for(query.strip)

        # If there are no results, ask the user to try another query
        if prices.empty?
          return answer("Sorry, I have no information on _#{query.strip}_ in #{Location::Adm0.find(user.location_adm0_id.not_nil!).name}.")

        # If there is more than a single commodity that matches, display an inline keyboard to choose one
        elsif prices.map(&.commodity_id).uniq.size > 1
          options = prices.map{|p| {p.commodity_name, "commodity/#{p.commodity_id}"}}.uniq
          return answer_with_inline("I have information on #{options.map{|opt| opt[0]}.join(", ")}; please choose one.", options)

        # Otherwise, show a description of the prices
        else
          answer(Price.description(prices, user: user, format: :markdown))
        end
      end

      private def entities
        @wit.not_nil!.entities
      end

      private def prices_for(query)
        Price.search_by_name(query.strip, limit: 50, adm0_id: user.location_adm0_id, adm1_id: user.location_adm1_id, mkt_id: user.location_mkt_id)
      end

      private def is_commodity?(string)
        string && commodity_names.any? {|commodity| commodity.downcase.includes?(string.not_nil!.downcase.strip)}
      end

      private def commodity_names
        self.class.commodity_names
      end

      private def geolocation
        MvamBot::Topics::Geolocation.new(messenger, message)
      end

      def self.commodity_names
        @@commodity_names ||= Price.commodity_names
      end

      def self.handles?(user : MvamBot::User, message : TelegramBot::Message, wit : Wit::MessageResponse? = nil)
        return true if message.text =~ /\/price/

        if wit
          intent = extract_value(wit.entities, "intent")
          return true if user.conversation_step =~ /queryprice/ && intent.nil?
          return true if intent == INTENT_QUERY_PRICE
          return true if extract_value(wit.entities, "commodity")
        end

        false
      end

    end
  end
end
