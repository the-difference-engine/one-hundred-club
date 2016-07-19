class AddAccessLevelsToUser < ActiveRecord::Migration
  def change
    add_column :users, :user_access, :boolean
    add_column :users, :blog_access, :boolean
    add_column :users, :events_access, :boolean
    add_column :users, :fallen_hero_access, :boolean
    add_column :users, :reporting_access, :boolean
    add_column :users, :member_access, :boolean
    add_column :users, :donation_access, :boolean
  end
end
