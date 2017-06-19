# mvam-bot installation for Facebook Messenger

This guide will walk you through the steps for setting up a chatbot for Facebook Messenger, with optional NLP support using wit.ai, using Docker in an Ubuntu Server 16.04 LTS 64-bit.

## Install Docker

Follow the instructions [here](https://docs.docker.com/engine/installation/linux/ubuntu/#install-docker) to install Docker CE, either from the repository or from a downloaded package.

## Setup database

The chatbot requires a PostgreSQL 9.5 database with postgis support. We will cover four different options for setting up the database. In all cases, you will want to take note of the user, password, database name, host and port to be used for accessing the database; also, make sure the server has a reasonable backup policy set up.

### Use Docker

The database can be set up as yet another Docker container in the setup. When we go through the `docker-compose.yml` setup later in the guide, make sure to create a folder for storing Postgres data and include another service with the following definition:

```
db:
  image: mdillon/postgis:9.5
  volumes:
    - 'PATH_TO_POSTGRES_DATA_FOLDER:/var/lib/postgresql/data'
  environment:
    POSTGRES_USER: 'mvambot'
    POSTGRES_PASSWORD: 'RANDOM_POSTGRES_PASSWORD'
    POSTGRES_DB: 'mvambot'
    PGDATA: '/var/lib/postgresql/data/pgdata'
```

Make sure to replace `PATH_TO_POSTGRES_DATA_FOLDER` with a path to a folder created for storing PGDATA, and `RANDOM_POSTGRES_PASSWORD` with a random password. In this scenario, the database host will be just `db`.

### Use RDS

If running the application on AWS, an option is to use RDS, Amazon's managed relational database service. Follow the instructions [here](http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/CHAP_GettingStarted.CreatingConnecting.PostgreSQL.html) to set up a PostgreSQL server.

After creating the server, it is recommended to create a separate user for accessing the chatbot database. From any server with a PostgreSQL client installed and access to the RDS server, run the following commands, replacing the host, port, and user as needed.

```
createuser --host=<DB instance endpoint> --port=<port> --username=<master user name> --password --interactive -P mvambot
psql --host=<DB instance endpoint> --port=<port> --username=<master user name> --password -c "GRANT mvambot to <master user name>"
createdb --host=<DB instance endpoint> --port=<port> --username=<master user name> --password -O mvambot mvambot
psql --host=<DB instance endpoint> --port=<port> --username=<master user name> --password mvambot -c "CREATE EXTENSION citext"
psql --host=<DB instance endpoint> --port=<port> --username=<master user name> --password mvambot -c "CREATE EXTENSION postgis"
```

On the first command, enter a `RANDOM_POSTGRES_PASSWORD` when prompted for the mvambot user, and do not grant permissions to create new databases or roles.

### Install PostgreSQL in the host

Follow [this guide](https://www.digitalocean.com/community/tutorials/how-to-install-and-use-postgresql-on-ubuntu-16-04) to install a PostgreSQL in the Ubuntu host. Installing the package should do the trick:
```
sudo apt-get update
sudo apt-get install postgresql postgresql-contrib
```

Optionally, you can run the commands described in the _RDS_ section to create a separate user to manage the `mvambot` database.

Make sure that the PostgreSQL server is listening in the `docker0` interface (usually address 172.17.0.1), as well as localhost for troubleshooting. See the `listen_addresses` of the [PostgreSQL configuration](https://www.postgresql.org/docs/9.5/static/runtime-config-connection.html) for more info.

### Use a PostgreSQL server installed in another server

If you already have a PostgreSQL 9.5 with postgis support, you can create a new mvambot database with the `citext` and `postgis` extensions and connect to it for using the application. It is recommended to set up a separate `mvambot` user as well with permissions for accessing only the mvambot database, as described in the _RDS_ section.

## Setup docker services

Create a `docker-compose.yml` file with the following contents:

```yaml
version: '2'

services:

  bot:
    image: instedd/mvam-chatbot:facebook_messenger
    command: /bin/sh -c 'sleep 1 && ./bin/micrate up && ./mvam-bot'
    ports:
      - 3010:80
    environment: &env
      PG_URL: PG_CONNECTION_STRING
      WFP_DATA_URL: https://s3.amazonaws.com/downloads.instedd.org/datasets/WFPVAM_FoodPrices_18-05-2016.csv.gz
      WFP_LOCAL_FILE: WFPVAM_FoodPrices_18-05-2016.csv
      FACEBOOK_BIND_ADDRESS: "0.0.0.0"
      FACEBOOK_BIND_PORT: 80
      TOPIC_GEOLOCATION: "false"
      TOPIC_PRICES: "false"
      START_SURVEY_ON_MISUNDERSTAND: "true"
      FACEBOOK_ACCESS_TOKEN: NONE
      FACEBOOK_VERIFY_TOKEN: VERIFY_ME

  web:
    image: instedd/mvam-chatbot:facebook_messenger
    command: /bin/sh -c 'sleep 1 && ./mvam-web'
    ports:
      - 3000:80
    environment:
      <<: *env
      WEB_BIND_PORT: 80
      WEB_BIND_ADDRESS: "0.0.0.0"
      WEB_USERNAME: admin
      WEB_PASSWORD: RANDOM_WEB_PASSWORD
```

Replace `RANDOM_WEB_PASSWORD` with a random password to be used for accessing the web frontend, and `PG_CONNECTION_STRING` with the connection string to the database, which has the following format (the values will depend on which database server you set up in the previous section):
```
postgres://USERNAME:PASSWORD@HOST:PORT/DATABASE_NAME
```

After this is set up, in the same folder where the `docker-compose.yml` file is, run `docker-compose up -d` to start both services.

## Setup proxy

After these steps, the web frontend and the bot are both listening in ports 3000 and 3010 respectively in the host. In this section we'll set up an nginx that will act as a proxy and perform SSL offloading. You can skip this step if you already have a proxy in place that can reuse.

### Install nginx

Install nginx by running `sudo apt-get install nginx` (see [this guide](https://www.digitalocean.com/community/tutorials/how-to-install-nginx-on-ubuntu-16-04) for more info) and configure it by removing the default site (remove all symlinks in `/etc/nginx/sites-enabled`), and add a new `mvambot` file in `sites-available` and symlink it from `sites-enabled` with the following configuration:

```
server {
  listen 80 ;
  listen [::]:80 ;

  root /var/www/html;

  location ~ /.well-known {
    allow all;
  }

  location / {
    return 301 https://$server_name$request_uri;
  }
}

server {

  listen 443 ssl ;
  listen [::]:443 ssl ;

  ssl_certificate PATH_TO_CERT_FULLCHAIN;
  ssl_certificate_key PATH_TO_CERT_PRIV_KEY;

  location /_webhook {
      proxy_pass http://localhost:3010;
      proxy_http_version 1.1;
      proxy_set_header Upgrade $http_upgrade;
      proxy_set_header Connection 'upgrade';
      proxy_set_header Host $host;
      proxy_cache_bypass $http_upgrade;
  }

  location / {
      proxy_pass http://localhost:3000;
      proxy_http_version 1.1;
      proxy_set_header Upgrade $http_upgrade;
      proxy_set_header Connection 'upgrade';
      proxy_set_header Host $host;
      proxy_cache_bypass $http_upgrade;
  }
}
```

Replace the `PATH_TO_CERT_FULLCHAIN` and `PATH_TO_CERT_PRIV_KEY` to the full chain pem certificate and key to your domain. If you don't have a certificate for the domain you are working with, you can get one by using letsencrypt. See [this guide](https://www.digitalocean.com/community/tutorials/how-to-secure-nginx-with-let-s-encrypt-on-ubuntu-16-04) for a detailed walkthrough on letsencrypt with nginx in Ubuntu 16.04.

Make sure to restart nginx after the configuration changes.

At this point, you should be able to navigate to the hostname you have set up in your DNS and access the web frontend, after entering the web user and password configured in the `WEB_USERNAME` and `WEB_PASSWORD` environment variables.

## Setup Facebook App

Facebook requires chatbots to be associated with a Facebook app. If you don't have one set up, follow [this guide](https://developers.facebook.com/docs/messenger-platform/guides/setup) to create an app and page for the chatbot.

When setting up the webhook, make sure to check the `messages` and `messaging_postbacks` options only, and enter https://BOT_URL/_webhook/ as _Callback URL_ (replacing BOT_URL by the actual URL you have set up in your DNS), and `VERIFY_ME` (or the contents of the `FACEBOOK_VERIFY_TOKEN` environment variable) as _Verify token_.

Then, set up a new page, subscribe the bot to it in the Facebook app, and enter the Page Access Token and Page ID in the **Bots** section of the web frontend to set up a new bot.

## Setup NLP

Natural Language Processing is **optional**, and uses [wit.ai](https://wit.ai/) for [extracting entities](https://wit.ai/docs/recipes#extract-a-keyword-entity) or categorizing [user intent](https://wit.ai/docs/recipes#categorize-the-user-intent). Note that only the _message understanding_ feature of wit.ai is used, and not the _stories_ beta feature.

Either a single wit.ai application can be attached to the chatbot application, or one per language. Create the wit.ai application(s) and copy the server access token from the Settings section. Then, add a `WIT_ACCESS_TOKEN` environment variable to the chatbot with the token as value, like this:

```yaml
bot:
  ...
  environment: &env
    ...
    FACEBOOK_ACCESS_TOKEN: NONE
    FACEBOOK_VERIFY_TOKEN: VERIFY_ME
    WIT_ACCESS_TOKEN: COPY_SERVER_ACCESS_TOKEN_FROM_WIT_APP_SETTINGS_HERE
```

To set up a wit application per language, add a suffix with the two-letter ISO code of the locale for that application, like this:
```yaml
bot:
  ...
  environment: &env
    ...
    FACEBOOK_ACCESS_TOKEN: NONE
    FACEBOOK_VERIFY_TOKEN: VERIFY_ME
    WIT_ACCESS_TOKEN_EN: TOKEN_FOR_ENGLISH
    WIT_ACCESS_TOKEN_ES: TOKEN_FOR_SPANISH
    WIT_ACCESS_TOKEN_FR: TOKEN_FOR_FRENCH
    WIT_ACCESS_TOKEN: TOKEN_FOR_FALLBACK_APP_FOR_ALL_OTHER_LANGUAGES
```

After changing this configuration, make sure to restart the services by running `docker-compose stop; docker-compose up`.

## Upgrading

At any point, to upgrade, in the folder where the `docker-compose.yml` file is, run:
```
docker-compose pull bot web
docker-compose stop
docker-compose up --force-recreate -d
```

## Troubleshooting

Since both the web and bot applications log to STDOUT by default, their logs can be accessed by running:
```
docker-compose logs web
docker-compose logs bot
```
