require 'rails_helper'

RSpec.describe Donation, type: :model do
  it "has a valid factory" do
    expect(FactoryGirl.build(:donation)).to be_valid
  end

  it "is invalid without a first name"
  it "is invalid without a last name"
  it "is invalid without a country"
  it "is invalid without a address"
  it "is invalid without a city"
  it "is invalid without a state"
  it "is invalid without a email"
  it "is invalid without a phone"
  it "is invalid without a zip code"
end
