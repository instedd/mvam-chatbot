module MvamBot::Spec

  class InlineQueryHandler < ::MvamBot::InlineQueryHandler
    setter search_radius_kilometers
    @search_radius_kilometers : Int32?

    def initialize(*args)
      super(*args)
    end

    protected def search_radius_kilometers
      @search_radius_kilometers || super
    end
  end

  def query_handler(query, user = nil, bot = nil, location = nil)
    bot ||= Bot.new
    query = Telegram.query(query, location: location)
    user = user || Factory::DB.user
    InlineQueryHandler.new(query, user, bot)
  end

  def handle_query(query, user = nil, bot = nil, location : {Float64, Float64} = nil, search_radius_kilometers : Int32? = nil)
    handler = query_handler(query, user, bot, location)
    handler.search_radius_kilometers = search_radius_kilometers.not_nil! if search_radius_kilometers
    handler.handle
    handler.bot.as(Bot).query_replies
  end

end

