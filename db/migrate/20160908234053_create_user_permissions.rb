class CreateUserPermissions < ActiveRecord::Migration
  def change
    create_table :user_permissions do |t|
      t.boolean :super_admin
      t.boolean :admin
      t.boolean :content

      t.timestamps null: false
    end
  end
end
