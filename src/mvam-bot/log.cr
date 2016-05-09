require "logger"

module MvamBot

  def self.logger
    @@logger ||= Logger.new(STDOUT).tap do |l|
      l.level = Logger::Severity.parse(ENV["LOG_LEVEL"]? || "DEBUG")
    end
  end

end
