class AddMemberIdColumnToUsers < ActiveRecord::Migration
  def change
    add_column :users, :member_id, :integer
  end
end
