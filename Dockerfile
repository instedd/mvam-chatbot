FROM crystallang/crystal:0.17.3

# Install git
RUN apt-get update && apt-get -y install git libyaml-0-2 postgresql-client curl && apt-get clean && rm -rf /var/lib/apt/lists/*

# Install crystal deps
ADD shard.yml /app/
ADD shard.lock /app/
WORKDIR /app
RUN crystal deps

# Add and build app
ADD . /app
RUN crystal build src/mvam-bot.cr --release

# Run migrations and start the bot
CMD ["./mvam-bot", "--micrate", "up"]
