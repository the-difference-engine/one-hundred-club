class AddMemberIdToDonations < ActiveRecord::Migration
  def change
  	add_column :donations, :member_id, :integer
  end
end
