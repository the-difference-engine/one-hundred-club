class DropAccessLevelsUserAccessLevelsUserProfilesTables < ActiveRecord::Migration
  def change
    drop_table :access_levels
    drop_table :user_access_levels
    drop_table :user_profiles
  end
end
