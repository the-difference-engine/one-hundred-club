class RemoveAdminLevelsFromUser < ActiveRecord::Migration
  def change
    remove_column :users, :admin, :boolean
    remove_column :users, :user_access, :boolean
    remove_column :users, :blog_access, :boolean
    remove_column :users, :events_access, :boolean
    remove_column :users, :fallen_hero_access, :boolean
    remove_column :users, :reporting_access, :boolean
    remove_column :users, :donation_access, :boolean
    remove_column :users, :member_access, :boolean
  end
end
