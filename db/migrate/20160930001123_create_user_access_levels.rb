class CreateUserAccessLevels < ActiveRecord::Migration
  def change
    create_table :user_access_levels do |t|
      t.integer :user_id
      t.integer :access_level_id

      t.timestamps null: false
    end
  end
end
