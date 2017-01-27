class Donation < ActiveRecord::Base
  belongs_to :member
  validates_presence_of :last_name, :address, :city, :state, :zip_code, :amount   
end
