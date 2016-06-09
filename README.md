# mvam-bot

[![CircleCI](https://circleci.com/gh/instedd/mvam-chatbot/tree/master.svg?style=svg&circle-token=5ae2f59b63a0f6b8e7451ea53cdbb4cfc8e23c88)](https://circleci.com/gh/instedd/mvam-chatbot/tree/master)

WFP mVAM food prices Telegram bot.

## Dependencies

* A PostgreSQL database version `9.5`, which can be provisioned via micrate and seeded via `bin/load-prices`.
* A Telegram bot, created by talking to [BotFather](https://telegram.me/BotFather)
* A Wit.ai application

### Database setup

To create a development database and run migrations:
```
$ createdb -E utf8 -O `whoami` mvam-chatbot
$ bin/micrate up
```

Prices can be seeded by running `bin/load-prices`

### Bot setup

To set up a Telegram bot to use for this project, talk to [BotFather](telegram.me/BotFather) and run the following slash commands:

* `/newbot` to create the bot, make sure to write down the access token
* `/setdescription` to set a suitable welcoming message
* `/setinline` to enable inline mode, with a description like `search prices...`
* `/seteinlinegeo` to send user GPS coordinates with inline queries
* `/setcommands` with the commands list

#### Bot commands list

Upon sending `/setcommands` to BotFather, send:
```
location - Set your location
price - Get prices on a commodity near you
help - Detailed help on this bot
```

#### Bot certificate

To create a sample certificate to use in Telegram serve mode:
```
openssl req -newkey rsa:2048 -sha256 -nodes -keyout cert.key -x509 -days 365 -out cert.pem -subj "/C=US/ST=New York/L=Brooklyn/O=Example Brooklyn Company/CN=cert"
```

### Wit.ai application

An application that should be able to identify the required entities and intents.

Several entities can be seeded with all the WFP DB prices by running `bin/upload-entities`.

## Environment

Set the following environment variables:

* `WFP_DATA_URL`: URL to WFP dataset in CSV format, such as `http://vam.wfp.org/sites/data/WFPVAM_FoodPrices_18-05-2016.csv`
* `TELEGRAM_TOKEN`: access token for the Telegram bot
* `TELEGRAM_BOT_NAME`: name of the bot, defaults to `wfpBot`
* `PG_URL`: URL to the postgres DB

In addition, if using the Telegram webhook to get updates, instead of polling:

* `TELEGRAM_WEBHOOK_URL`: URL of the webhook where Telegram should post updates
* `TELEGRAM_CERTIFICATE_PATH`: path to the certificate to set with the webhook
* `TELEGRAM_KEY_PATH`: path to the private key of the certificate, if the app should listen for secure connections
* `TELEGRAM_BIND_ADDRESS`: bind address for listening to Telegram updates
* `TELEGRAM_BIND_PORT`: bind port for listening to Telegram updates

To run the web application:

* `WEB_USERNAME`: user for basic-auth access
* `WEB_PASSWORD`: pass for basic-auth access
* `WEB_BIND_ADDRESS`: address for binding the web app
* `WEB_BIND_PORT`:  port for binding the web app


To forward all not-understood messages to wit.ai:

* `WIT_ACCESS_TOKEN`: access token for wit.ai application

## Running

Run locally with `crystal src/mvam-bot.cr`.

A supporting web application can be run with `crystal src/mvam-web.cr`.

## Tests

* Create test db with `createdb mvambot-test`
* Run migrations `bin/micrate up` with `PG_URL=postgres://ubuntu@localhost/mvambot-test`
* Seed test DB running `bin/load-prices` with `PG_URL=postgres://ubuntu@localhost/mvambot-test`
* Run tests with `crystal spec`

## Roadmap

Overview of upcoming milestones.

### Price queries

[Milestone](https://github.com/instedd/mvam-chatbot/milestones/Version%201.0%20-%20Price%20Queries)

Support for geolocated price queries via inline queries, commands, or NLP.
Use WFP food prices DB to answer queries.

### Surveys

[Milestone](https://github.com/instedd/mvam-chatbot/milestones/2/edit)

Run food security surveys from the bot.

### Feedback

Await feedback from the two previous milestones and implement suggested changes.
