require "../spec_helper"

include MvamBot::Spec
include MvamBot::Spec::Wit

describe ::MvamBot::Price do

  describe "trends" do

    it "should return no changes for the past months" do
      history = [
        Factory.price(10.0, month: 5),
        Factory.price(10.0, month: 4),
        Factory.price(10.0, month: 3),
        Factory.price(9.0, month: 2),
        Factory.price(8.0, month: 1)
      ]

      MvamBot::Price.trend_description(history).should eq("The price has not changed since March 2015.")
    end

    it "should return an increase for the past months" do
      history = [
        Factory.price(12.0, month: 5),
        Factory.price(10.0, month: 4),
        Factory.price(6.0, month: 3),
        Factory.price(20.0, month: 2),
        Factory.price(20.0, month: 1)
      ]

      MvamBot::Price.trend_description(history).should eq("The price went up 50% since March 2015.")
    end

    it "should return a decrease for the past months" do
      history = [
        Factory.price(5.0, month: 5),
        Factory.price(8.0, month: 4),
        Factory.price(12.0, month: 3),
        Factory.price(5.0, month: 2),
        Factory.price(5.0, month: 1)
      ]

      MvamBot::Price.trend_description(history).should eq("The price went down 50% since March 2015.")
    end

    it "should return nil if not enough history records are available" do
      MvamBot::Price.trend_description([Factory.price(10.0, month: 5), Factory.price(10.0, month: 4)]).should eq(nil)
    end

  end

end
