require "logger"

module MvamBot

  @@logger : Logger?

  def self.logger
    @@logger ||= Logger.new(STDOUT).tap do |l|
      l.level = Logger::Severity.parse(MvamBot::Config.log_level)
    end
  end

end
