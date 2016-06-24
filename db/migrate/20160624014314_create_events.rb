class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :image
      t.string :title
      t.text :description
      t.datetime :datetime
      t.string :location

      t.timestamps null: false
    end
  end
end
