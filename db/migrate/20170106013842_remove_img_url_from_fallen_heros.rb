class RemoveImgUrlFromFallenHeros < ActiveRecord::Migration
  def change
    remove_column :fallen_heros, :image_url, :string
  end
end
