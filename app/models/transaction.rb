class Transaction < ActiveRecord::Base
  belongs_to :user_profile
end
