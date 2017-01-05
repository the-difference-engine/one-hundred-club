class RenameDepartmentId < ActiveRecord::Migration
  def change
    rename_column :fallen_heros, :department_id, :fallen_hero_image_id
  end
end
