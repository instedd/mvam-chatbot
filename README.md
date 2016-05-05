# mvam-bot

WFP mVAM food prices Telegram bot.

## Dependencies

A PostgreSQL database, which can be created with the `db/psql.sql` script and seeded via `crystal tasks/load.cr`.

## Bot setup

To set up a Telegram bot to use for this project, talk to [BotFather](telegram.me/BotFather) and run the following slash commands:

* `/newbot` to create the bot, make sure to write down the access token
* `/setinline` to enable inline mode, with a description like `search prices...`
* `/seteinlinegeo` to send user GPS coordinates with inline queries
* `/setcommands` with `location - Set your location`

## Environment

Set the following environment variables:

* `TELEGRAM_TOKEN`: access token for the Telegram bot
* `PG_URL`: URL to the postgres DB

## Running

Run with `crystal src/mvam-bot.cr`
