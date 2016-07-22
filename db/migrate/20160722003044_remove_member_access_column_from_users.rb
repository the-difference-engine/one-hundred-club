class RemoveMemberAccessColumnFromUsers < ActiveRecord::Migration
  def change
    remove_column :users, :member_access
  end
end
