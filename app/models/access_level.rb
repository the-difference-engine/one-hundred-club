class AccessLevel < ActiveRecord::Base
  has_many :user_access_levels
  has_many :users, through: :user_access_levels
end
