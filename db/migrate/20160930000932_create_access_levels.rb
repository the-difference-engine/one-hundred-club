class CreateAccessLevels < ActiveRecord::Migration
  def change
    create_table :access_levels do |t|
      t.boolean :admin
      t.boolean :content
      t.boolean :financial

      t.timestamps null: false
    end
  end
end
