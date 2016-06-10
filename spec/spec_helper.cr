require "spec"

# Setup test env config
ENV["PG_URL"] = ENV["TEST_PG_URL"].not_nil!
ENV["LOG_LEVEL"] = "FATAL"
ENV["WIT_ACCESS_TOKEN"] = nil

require "../src/mvam-bot/models/*"
require "../src/mvam-bot/wit/*"
require "../src/mvam-bot/geocoding/*"
require "../src/mvam-bot/handlers/*"
require "../src/mvam-bot/surveys/*"
require "../src/mvam-bot/*"

require "./support/*"
