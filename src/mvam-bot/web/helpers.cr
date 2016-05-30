module MvamBot::Web

  module Views

    def log_icon(kind)
      case kind
      when MvamBot::Logs::INCOMING_MESSAGE
        "glyphicon glyphicon-arrow-left"
      when MvamBot::Logs::OUTGOING_MESSAGE
        "glyphicon glyphicon-arrow-right"
      when MvamBot::Logs::QUERY
        "glyphicon glyphicon-search"
      when MvamBot::Logs::CALLBACK
        "glyphicon glyphicon-transfer"
      end
    end

  end

end
