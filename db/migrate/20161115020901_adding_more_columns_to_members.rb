class AddingMoreColumnsToMembers < ActiveRecord::Migration
  def change
  	add_column :members, :email, :string
  	rename_column :members, :street_address, :address
  	remove_column :members, :secondary_address, :string
  end
end
