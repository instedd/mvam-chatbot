require "./spec_helper"

include MvamBot::Spec
include MvamBot::Spec::Wit

describe ::MvamBot::Location do
  describe "Mkt" do
    it "returns latitude and longitude if present" do
      location = MvamBot::Location::Mkt.find_by_name("Lindi", 48364).not_nil!

      location.lat.should eq(-10)
      location.lng.should eq(39.7167)
    end
  end

  it "allows to query mkts around a point" do
    DB.cleanup

    result = MvamBot::Location::Mkt.around(*jacmel_center)
                                   .map { |tup| {tup[0].name, tup[1]} }
    expected = [
                {"Jacmel", 0.0},
                {"Port-au-Prince", 39.8118},
                {"Hinche", 115.157},
                {"Cayes", 128.603},
                {"Gonaives", 135.485}
               ] of {String, Float64}

    verify_results(expected, result)
  end

  it "allows to limit result count" do
    DB.cleanup

    result = MvamBot::Location::Mkt.around(*jacmel_center, 3)
                                   .map { |tup| {tup[0].name, tup[1]} }
    expected = [
                {"Jacmel", 0.0},
                {"Port-au-Prince", 39.8118},
                {"Hinche", 115.157},
               ] of {String, Float64}

    verify_results(expected, result)
  end

  it "allows to limit search radius" do
    DB.cleanup

    result = MvamBot::Location::Mkt.around(*jacmel_center, 5, 120)
                                   .map { |tup| {tup[0].name, tup[1]} }
    expected = [
                {"Jacmel", 0.0},
                {"Port-au-Prince", 39.8417},
                {"Hinche", 115.182},
               ] of {String, Float64}

    verify_results(expected, result)
  end
end

def jacmel_center
  {18.2342, -72.5347}
end

def verify_results(expected, actual)
  actual.size.should eq(expected.size)
  actual.zip(expected).each do |t|
    a, e = t
    a[0].should eq(e[0])
    a[1].should be_close(e[1], 0.1)
  end
end
