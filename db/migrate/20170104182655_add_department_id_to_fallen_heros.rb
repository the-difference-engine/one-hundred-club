class AddDepartmentIdToFallenHeros < ActiveRecord::Migration
  def change
    add_column :fallen_heros, :department_id, :integer
  end
end
