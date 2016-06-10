require "./mvam"
require "kemal"

include MvamBot::Web::Views

basic_auth MvamBot::Config.web_username, MvamBot::Config.web_password

macro mvam_render(name)
  render "./src/mvam-bot/web/views/#{ {{name}} }.ecr", "./src/mvam-bot/web/layouts/layout.ecr"
end

get "/" do
  users = MvamBot::User.all
  mvam_render "home"
end

get "/users" do
  users = MvamBot::User.all
  mvam_render "users"
end

get "/users/:id" do |env|
  user = MvamBot::User.find(env.params.url["id"].to_i)
  if user
    messages = MvamBot::Logs.for_user(user.id, limit: 1000)
    messages_by_day = messages.group_by{|m| m.timestamp.date}
    message_count = MvamBot::Logs.count(user_id: user.id)
    surveys = MvamBot::SurveyResponse.for_user(user.id)
    fields = MvamBot::Surveys::Survey.flow.data
    mvam_render "user"
  else
    env.response.status_code = 404
  end
end

get "/files/:id" do |env|
  if file = MvamBot::DataFile.find(env.params.url["id"])
    env.response.headers.add "Content-Type", "application/octet-stream"
    env.response.headers.add "Content-Disposition", "attachment; filename=\"#{env.params.url["id"]}.#{file.extension}\"" # TODO: CHECK EXT
    env.response.content_length = file.data.size
    env.response.write(file.data)
  else
    env.response.status_code = 404
  end
end

Kemal.config.tap do |config|
  config.host_binding = MvamBot::Config.web_bind_address
  config.port = MvamBot::Config.web_bind_port
  config.logger = MvamBot::KemalLogger.new(config.env)
end

MvamBot.logger.info "Starting web server on #{MvamBot::Config.web_bind_address}:#{MvamBot::Config.web_bind_port}"
Kemal.run
