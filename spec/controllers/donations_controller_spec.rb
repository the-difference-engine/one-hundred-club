require 'rails_helper'

RSpec.describe DonationsController, type: :controller do
  describe 'POST #create' do
    context "with valid attributes" do
      it "saves the new donation in the database" do
        expect {
          post :create, donation: attributes_for(:donation)
        }.to change(Donation, :count).by(1)
      end
    end
  end
end
