class ChangeImageUrlToString < ActiveRecord::Migration
  def change
    change_column :fallen_heros, :image_url, :string
  end
end
