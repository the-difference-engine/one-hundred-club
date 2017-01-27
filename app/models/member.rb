class Member < ActiveRecord::Base
  has_many :donations
  validates_presence_of :first_name, :last_name, :address, :city, :state, :zip_code, :phone_number, :level
end
