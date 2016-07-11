require 'rails_helper'

RSpec.describe Donation, type: :model do
  it "has a valid factory" do
    expect(FactoryGirl.build(:donation)).to be_valid
  end

  it "is invalid without a first_name" do 
    donation = FactoryGirl.build(:donation, first_name: nil)
    donation.valid?
    expect(donation.errors[:first_name]).to include("can't be blank")
  end
end
