class FirstNameLastName < ActiveRecord::Migration
  def change
    rename_column :staffs, :name, :first_name
    add_column :staffs, :last_name, :string
  end
end
