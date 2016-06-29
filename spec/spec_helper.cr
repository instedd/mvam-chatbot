require "spec"

# Setup test env config
ENV["TEST"] = "true"
ENV["PG_URL"] = ENV["TEST_PG_URL"].not_nil!
ENV["LOG_LEVEL"] = "FATAL"
ENV["WIT_ACCESS_TOKEN"] = nil

require "../src/mvam"
require "./support/*"
