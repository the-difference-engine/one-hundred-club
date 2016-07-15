class ChangeIntegersToStrings < ActiveRecord::Migration
  def up
    change_column :members, :phone, :string
  end

  def down
    change_column :members, :phone, :integer
  end
end
