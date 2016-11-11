class TypeToCategory < ActiveRecord::Migration
  def change
    rename_column :staffs, :type, :category
  end
end
