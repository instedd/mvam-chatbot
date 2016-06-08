.PHONY: db_create db_migrate db_drop db_test_prepare db_seed db_setup test run

DEV_DB=mvam-chatbot
TEST_DB=mvam-chatbot_test

db_create:
	@createdb -E utf8 -O `whoami` $(DEV_DB)

db_migrate:
	@source .env && bin/micrate up

db_drop:
	@dropdb --if-exists $(DEV_DB)

db_test_prepare:
	@dropdb --if-exists $(TEST_DB)
	@createdb -E utf8 -O `whoami` $(TEST_DB)
	@PG_URL="postgres://`whoami`@localhost/$(TEST_DB)" bin/micrate up
	@PG_URL="postgres://`whoami`@localhost/$(TEST_DB)" bin/load-prices
	@PG_URL="postgres://`whoami`@localhost/$(TEST_DB)" bin/load-positions

db_seed:
	@source .env && bin/load-prices
	@source .env && bin/load-positions

db_setup: db_create db_migrate db_seed

test:
	@TEST_PG_URL="postgres://`whoami`@localhost/$(TEST_DB)" crystal spec

run-web:
	@source .env && crystal src/mvam-web.cr

run:
	@source .env && crystal src/mvam-bot.cr
