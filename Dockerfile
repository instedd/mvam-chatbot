FROM crystallang/crystal:0.17.4

# Install dependencies
RUN apt-get update && apt-get -y install git libyaml-0-2 postgresql-client curl xz-utils && apt-get clean && rm -rf /var/lib/apt/lists/*

# Download ffmpeg and symlink it to bin
WORKDIR /opt
RUN curl -o ffmpeg.tar.xz http://johnvansickle.com/ffmpeg/releases/ffmpeg-release-64bit-static.tar.xz
RUN tar xvJf ffmpeg.tar.xz
RUN ln -ns /opt/ffmpeg-3.0.2-64bit-static/ffmpeg /usr/local/bin/

# Install crystal deps
ADD shard.yml /app/
ADD shard.lock /app/
WORKDIR /app
RUN crystal deps

# Add and build bot and web
ADD . /app
RUN crystal build src/mvam-bot.cr --release
RUN crystal build src/mvam-web.cr --release
RUN crystal build src/mvam-cron.cr
RUN crystal build src/mvam-notifications.cr

# Start the bot
CMD "./mvam-bot"
