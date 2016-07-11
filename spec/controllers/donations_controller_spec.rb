require 'rails_helper'

RSpec.describe DonationsController, type: :controller do
  describe 'GET #new' do
    it "assigns a new Donation to @donation" do
      get :new
      expect(assigns(:donation)).to be_a_new(Donation)
    end
    it "renders the :new template" do
      get :new
      expect(response).to render_template :new
    end
  end
end
