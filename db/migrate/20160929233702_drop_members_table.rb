class DropMembersTable < ActiveRecord::Migration
  def change
    drop_table :members
  end
end
