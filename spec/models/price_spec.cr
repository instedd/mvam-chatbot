require "../spec_helper"

include MvamBot::Spec
include MvamBot::Spec::Wit

describe ::MvamBot::Price do

  describe "trends" do

    it "should return no changes for the past month" do
      history = [
        Factory.price(10.0, month: 5),
        Factory.price(10.0, month: 4),
        Factory.price(9.0, month: 3),
        Factory.price(9.0, month: 2),
        Factory.price(8.0, month: 1)
      ]

      MvamBot::Price.trend_description(history).should eq("The price has not changed in the previous month.")
    end

    it "should return no changes for the past months" do
      history = [
        Factory.price(10.0, month: 5),
        Factory.price(10.0, month: 4),
        Factory.price(10.0, month: 3),
        Factory.price(9.0, month: 2),
        Factory.price(8.0, month: 1)
      ]

      MvamBot::Price.trend_description(history).should eq("The price has not changed in the previous 2 months.")
    end

    it "should return no changes for the past years" do
      history = (2012..2015).map do |year|
       (1..12).map {|m| Factory.price(10.0, year: year, month: m+1)}
      end.flatten.reverse

      MvamBot::Price.trend_description(history).should eq("The price has not changed in the previous 4 years.")
    end

    it "should return an increase for the past months" do
      history = [
        Factory.price(12.0, month: 5),
        Factory.price(11.0, month: 4),
        Factory.price(10.0, month: 3),
        Factory.price(20.0, month: 2),
        Factory.price(20.0, month: 1)
      ]

      MvamBot::Price.trend_description(history).not_nil!.tap do |desc|
        desc.should contain("The price went up 20% in the previous 2 months")
        desc.should contain("it was 10 AFN per KG on March")
      end
    end

    it "should return a decrease for the past months" do
      history = [
        Factory.price(5.0, month: 5),
        Factory.price(8.0, month: 4),
        Factory.price(10.0, month: 3),
        Factory.price(5.0, month: 2),
        Factory.price(5.0, month: 1)
      ]

      MvamBot::Price.trend_description(history).not_nil!.tap do |desc|
        desc.should contain("The price went down 50% in the previous 2 months")
        desc.should contain("it was 10 AFN per KG on March")
      end
    end

    it "should return nil if no history is available" do
      MvamBot::Price.trend_description([Factory.price(10.0, month: 5)]).should eq(nil)
    end

  end

end
