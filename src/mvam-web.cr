require "./mvam"
require "./mvam-bot/web/*"
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

get "/surveys" do
  surveys = MvamBot::SurveyResponse.all
  fields = MvamBot::Surveys::Survey.flow.data
  users_by_id = MvamBot::User.all.index_by(&.id)
  mvam_render "surveys"
end

get "/news" do
  post_success = false
  post_invalid_params = false
  countries = MvamBot::Country.all
  mvam_render "news"
end

post "/news" do |env|
  message = env.params.body["message"]?
  country_code = env.params.body["country"]?

  puts country_code
  puts message

  if validate_news_params(country_code, message)
    post_success = true
    post_invalid_params = false

    MvamBot::News.schedule_delivery(MvamBot::Country.find_by_code(country_code).not_nil!, message.not_nil!)
  else
    post_success = false
    post_invalid_params = true
  end

  countries = MvamBot::Country.all
  mvam_render "news"
end

get "/surveys.csv" do |env|
  surveys = MvamBot::SurveyResponse.all
  fields = MvamBot::Surveys::Survey.flow.data
  users_by_id = MvamBot::User.all.index_by(&.id)
  env.response.content_type = "text/csv"

  CSV.build do |csv|
    csv.row(["User ID", "User name", "Timestamp", "Completed"] + fields)
    surveys.each do |survey|
      user = users_by_id[survey.user_id]
      row = [user.id, user.full_name, survey.timestamp, (survey.completed ? "Yes" : "No")]
      row += fields.map do |field|
        if value = survey.data[field]?
          (value =~ /photo:\/\/(.+)/) ? "#{MvamBot::Config.web_url}files/#{$~[1]}" : value
        end
      end
      csv.row(row)
    end
  end
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

def validate_news_params(country, message)
  return false if message.nil? || message.empty?
  return false unless MvamBot::Country.code_exists?(country)

  return true
end

Kemal.config.tap do |config|
  config.host_binding = MvamBot::Config.web_bind_address
  config.port = MvamBot::Config.web_bind_port
  config.logger = MvamBot::KemalLogger.new(config.env)
end

MvamBot.logger.info "Starting web server on #{MvamBot::Config.web_bind_address}:#{MvamBot::Config.web_bind_port}"
Kemal.run
