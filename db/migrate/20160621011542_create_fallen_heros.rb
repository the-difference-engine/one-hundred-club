class CreateFallenHeros < ActiveRecord::Migration
  def change
    create_table :fallen_heros do |t|
      t.string :rank
      t.string :first_name
      t.string :middle_name
      t.string :last_name
      t.string :department
      t.date :date_deceased
      t.text :description
      t.string :image_url

      t.timestamps null: false
    end
  end
end
