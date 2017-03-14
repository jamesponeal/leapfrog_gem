require 'spec_helper'

describe Leapfrog do

  let(:user) { Leapfrog::User.new("Kermit", 50000, "60201", 35) }

  it 'has a version number' do
    expect(Leapfrog::VERSION).not_to be nil
  end

  it "has a name" do
    expect(user.name).to eq("Kermit")
  end

  it "has an income" do
    expect(user.income).to eq(50000)
  end

  it "has a zipcode" do
    expect(user.zipcode).to eq("60201")
  end

  it "has an age" do
    expect(user.age).to eq(35)
  end

  it "should return a Hash" do
    expect(user.get_ranking("0.26532","C")).to be_kind_of(Hash)
  end

  it "must get a propensity and ranking response" do
    expect(user.get_ranking("0.26532","C")).to eq({"propensity"=>"0.26532", "ranking"=>"C"})
  end

  it "should return the correct propensity" do
    response = user.get_ranking("0.26532","C")
    expect(response["propensity"]).to eq("0.26532")
  end

  it "should return the correct ranking" do
    response = user.get_ranking("0.26532","C")
    expect(response["ranking"]).to eq("C")
  end

end