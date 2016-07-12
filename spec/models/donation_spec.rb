require 'rails_helper'

RSpec.describe Donation, type: :model do
  it "has a valid factory" do
    expect(FactoryGirl.build(:donation)).to be_valid
  end
end
