class CreateSirens < ActiveRecord::Migration
  def change
    create_table :sirens do |t|
      t.string :title
      t.string :pdf

      t.timestamps null: false
    end
  end
end
