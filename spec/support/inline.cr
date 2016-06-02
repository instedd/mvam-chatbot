module MvamBot::Spec

  def query_handler(query, user = nil, bot = nil, location = nil)
    bot ||= Bot.new
    query = Telegram.query(query, location: location)
    user = user || Factory::DB.user
    InlineQueryHandler.new(query, user, bot)
  end

  def handle_query(query, user = nil, bot = nil, location : {Float64, Float64} = nil)
    handler = query_handler(query, user, bot, location)
    handler.handle
    handler.bot.as(Bot).query_replies
  end

end

