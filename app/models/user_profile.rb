class UserProfile < ActiveRecord::Base
  belongs_to :user
  has_many :transactions
end
