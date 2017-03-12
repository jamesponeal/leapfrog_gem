require 'spec_helper'

describe Leapfrog do
  it 'has a version number' do
    expect(Leapfrog::VERSION).not_to be nil
  end

  it "Jim is me" do
    expect(Leapfrog::User.portray("Jim")).to eql("It's Me!")
  end

  it "Not Jim is not me" do
    expect(Leapfrog::User.portray("Not Jim")).to eql("You're not me!!")
  end
end