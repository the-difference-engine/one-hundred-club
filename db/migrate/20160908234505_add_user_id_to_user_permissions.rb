class AddUserIdToUserPermissions < ActiveRecord::Migration
  def change
    add_column :user_permissions, :user_id, :integer
  end
end
