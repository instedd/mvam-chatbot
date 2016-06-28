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

  it "does not allow repeated subscriptions" do
    DB.cleanup

    country = MvamBot::Country.find_by_name("Argentina")
    user = Factory::DB.user
    MvamBot::News.subscribe(country, user)

    expect_raises do
      MvamBot::News.subscribe(country, user)
    end

    MvamBot::News.subscribed_users(country).size.should eq(1)
  end

  it "informs subscriptions per country" do
    DB.cleanup

    c1 = MvamBot::Country.find_by_code("AR").not_nil!
    c2 = MvamBot::Country.find_by_code("BE").not_nil!

    MvamBot::News.subscribe(c1, Factory::DB.user(id: 1000000))
    MvamBot::News.subscribe(c1, Factory::DB.user(id: 1000001))
    MvamBot::News.subscribe(c2, Factory::DB.user(id: 1000002))

    MvamBot::News.subscriptions_per_country.should eq({
      "AR" => 2,
      "BE" => 1
    })
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

  it "dequeues deliverys for processing" do
    DB.cleanup

    country = MvamBot::Country.find_by_name("Argentina")

    user1 = Factory::DB.user(id: 1000000); MvamBot::News.subscribe(country, user1) 
    user2 = Factory::DB.user(id: 1000001); MvamBot::News.subscribe(country, user2) 

    n = MvamBot::News.schedule_delivery(country, "The price of wheat is rising in Argentina.")
    MvamBot::News.pending_deliveries(n).should eq(2)

    MvamBot::News.dequeue_delivery.not_nil!.tap do |d|
      d.content_id.should eq(n.id)
      d.user_id.should eq(user1.id)
    end

    MvamBot::News.dequeue_delivery.not_nil!.tap do |d|
      d.content_id.should eq(n.id)
      d.user_id.should eq(user2.id)
    end

    MvamBot::News.dequeue_delivery.should be_nil
  end

end
