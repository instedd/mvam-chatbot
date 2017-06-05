require "../spec_helper"

include MvamBot::Spec

private def resolve(page_id, locale)
  ::MvamBot::BotDefinition.resolve(page_id, locale)
end

private def resolve!(page_id, locale)
  resolve(page_id, locale).not_nil!
end

describe ::MvamBot::BotDefinition do
  MvamBot::Spec::DB.cleanup

  ::MvamBot::BotDefinition.create(name: "English US/UK 1", locales: "en-US, en-UK", page_id: "1", access_token: "T", flow: "")
  ::MvamBot::BotDefinition.create(name: "Castellano 1", locales: "es-AR, *", page_id: "1", access_token: "T", flow: "")
  ::MvamBot::BotDefinition.create(name: "English US 2", locales: "en-US", page_id: "2", access_token: "T", flow: "")
  ::MvamBot::BotDefinition.create(name: "English/Castellano 2", locales: "en, es", page_id: "2", access_token: "T", flow: "")
  ::MvamBot::BotDefinition.create(name: "Default 2", locales: "", page_id: "2", access_token: "T", flow: "")

  it "should retrieve bot for given locale" do
    resolve!("1", "en-US").name.should eq("English US/UK 1")
  end

  it "should retrieve bot for given lang" do
    resolve!("2", "es-AR").name.should eq("English/Castellano 2")
  end

  it "should retrieve bot for given locale over lang" do
    resolve!("2", "en-US").name.should eq("English US 2")
  end

  it "should retrieve bot with star locale" do
    resolve!("1", "it-IT").name.should eq("Castellano 1")
  end

  it "should retrieve bot with no locale" do
    resolve!("2", "it-IT").name.should eq("Default 2")
  end

  it "should not retrieve bot" do
    resolve("3", "it-IT").should be_nil
  end
end
