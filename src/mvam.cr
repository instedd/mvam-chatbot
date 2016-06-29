require "./mvam-bot/models/*"
require "./mvam-bot/geocoding/*"
require "./mvam-bot/wit/*"
require "./mvam-bot/topics/*"
require "./mvam-bot/handlers/*"
require "./mvam-bot/surveys/*"
require "./mvam-bot/*"

MvamBot::DB.register_extension_decoder("citext", PG::Decoders::StringDecoder.new)
