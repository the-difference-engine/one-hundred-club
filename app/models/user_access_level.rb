class UserAccessLevel < ActiveRecord::Base
  belongs_to :user
  belongs_to :access_levels
end
