class ChangeZipCodeDataType < ActiveRecord::Migration
  def up
    change_column :members, :zip_code, :string
  end

  def down
    change_column :members, :zip_code, :integer
  end
end
