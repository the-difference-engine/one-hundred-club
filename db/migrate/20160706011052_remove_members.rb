class RemoveMembers < ActiveRecord::Migration
  def change
    drop_table :members do |t|

    end
  end
end
