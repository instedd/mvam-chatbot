# mvam-bot

WFP mVAM food prices Telegram bot.

## Dependencies

A PostgreSQL database, which can be created with the `db/psql.sql` script and seeded via `crystal tasks/load.cr`.

## Bot setup

To set up a Telegram bot to use for this project, talk to [BotFather](telegram.me/BotFather) and run the following slash commands:

* `/newbot` to create the bot, make sure to write down the access token
* `/setdescription` to set a suitable welcoming message
* `/setinline` to enable inline mode, with a description like `search prices...`
* `/seteinlinegeo` to send user GPS coordinates with inline queries
* `/setcommands` with `location - Set your location`

## Environment

Set the following environment variables:

* `TELEGRAM_TOKEN`: access token for the Telegram bot
* `PG_URL`: URL to the postgres DB

In addition, if using the Telegram webhook to get updates, instead of polling:

* `TELEGRAM_WEBHOOK_URL`: URL of the webhook where Telegram should post updates
* `TELEGRAM_CERTIFICATE_PATH`: path to the certificate to set with the webhook
* `TELEGRAM_KEY_PATH`: path to the private key of the certificate, if the app should listen for secure connections
* `TELEGRAM_BIND_ADDRESS`: bind address for listening to Telegram updates
* `TELEGRAM_BIND_PORT`: bind port for listening to Telegram updates

## Certificate

```
openssl req -newkey rsa:2048 -sha256 -nodes -keyout spalladino-manas.ddns.net.key -x509 -days 365 -out spalladino-manas.ddns.net.pem -subj "/C=US/ST=New York/L=Brooklyn/O=Example Brooklyn Company/CN=spalladino-manas.ddns.net"
```

## Running

Run with `crystal src/mvam-bot.cr`
