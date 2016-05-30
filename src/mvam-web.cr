require "./mvam-bot/models/*"
require "./mvam-bot/web/*"
require "./mvam-bot/*"

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
    messages = MvamBot::Logs.for_user(user.id)
    message_count = MvamBot::Logs.count(user_id: user.id)
    mvam_render "user"
  else
    env.response.status_code = 404
  end
end

Kemal.run
