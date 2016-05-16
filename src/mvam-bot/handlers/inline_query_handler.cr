module MvamBot

  class InlineQueryHandler

    getter :query
    getter :user
    getter :bot

    RESULTS_LIMIT = 30

    def initialize(@query : TelegramBot::InlineQuery, @user : User, @bot : MvamBot::Bot)
    end

    def handle
      if !user.location_adm0_id
        answer(pm_text: "Press here to set your location to start")
      else
        prices = Price.search_by_name(query.query, limit: RESULTS_LIMIT, offset: query_offset, filter_level: 0, adm0_id: user.location_adm0_id, adm1_id: user.location_adm1_id, mkt_id: user.location_mkt_id)
        results = prices.map { |p| TelegramBot::InlineQueryResultArticle.new("prices/#{p.id}", p.commodity_name, display_content_for(p), description: p.short_description) }
        answer(results, "Location is #{user.location_description} (press here to change)")
      end
    end

    def answer(results = Array(TelegramBot::InlineQueryResult).new(0), pm_text = nil)
      next_offset = results.size == RESULTS_LIMIT ? (query_offset + RESULTS_LIMIT).to_s : nil
      MvamBot.logger.debug "< AnswerInlineQuery #{query.id}, results_size: #{results.size}, offset: #{next_offset}"
      MvamBot::Logs::Query.create(user.id, query.query, query_offset, results.size, pm_text, Time.utc_now)
      bot.answer_inline_query(query.id, results, switch_pm_text: pm_text, switch_pm_parameter: "location", is_personal: true, cache_time: 10, next_offset: next_offset)
    end

    protected def query_offset
      (query.offset.nil? || query.offset == "") ? 0 : query.offset.to_i
    end

    protected def display_content_for(price)
      content = TelegramBot::InputTextMessageContent.new(price.long_description(format: :markdown))
      content.parse_mode = "Markdown"
      content
    end

  end

end
