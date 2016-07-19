class AddMemberAccessColumnToUsers < ActiveRecord::Migration
  def change
    add_column :users, :member_access, :boolean, default: false
  end
end
