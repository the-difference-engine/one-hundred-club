class AddMemberAccessColumnToUsers < ActiveRecord::Migration
  def change
    add_column :users, :member_access, :boolean   
  end
end
