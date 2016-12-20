class AddLevelToMember < ActiveRecord::Migration
  def change
  	add_column :members, :level, :string
  end
end
