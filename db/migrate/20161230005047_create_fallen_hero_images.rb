class CreateFallenHeroImages < ActiveRecord::Migration
  def change
    create_table :fallen_hero_images do |t|
      t.string :file
      t.string :department

      t.timestamps null: false
    end
  end
end
