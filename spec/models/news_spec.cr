require "../spec_helper"

include MvamBot::Spec

describe ::MvamBot::News do

  it "foo" do
    DB.cleanup

    country = MvamBot::Country.find_by_name("Argentina")
    message = "The price of rice is falling in Argentina!!"

    MvamBot::News.schedule_delivery(country, message)

    all_news = MvamBot::News.all
    all_news.size.should eq(1)

    all_news[0].sent_at.should be_nil
  end

end
