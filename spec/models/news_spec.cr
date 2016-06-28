require "../spec_helper"

include MvamBot::Spec

describe ::MvamBot::News do

  it "allows to retrieve current subscriptions for a country" do
    DB.cleanup

    country = MvamBot::Country.find_by_name("Argentina")
    MvamBot::News.subscribed_users(country).empty?.should be_true

    user = Factory::DB.user
    MvamBot::News.subscribe(country, user)

    MvamBot::News.subscribed_users(country).should eq([user.id])
  end

  it "enqueues messages for future delivery" do
    DB.cleanup
    country = MvamBot::Country.find_by_name("Argentina")

    n1 = MvamBot::News.schedule_delivery(country, "The price of wheat is falling in Argentina.")
    MvamBot::News.pending_deliveries(n1).should eq(0)

    MvamBot::News.subscribe(country, Factory::DB.user(id: 1000000))
    MvamBot::News.subscribe(country, Factory::DB.user(id: 1000001))

    n2 = MvamBot::News.schedule_delivery(country, "The price of wheat is rising in Argentina.")
    MvamBot::News.pending_deliveries(n2).should eq(2)
  end

end
