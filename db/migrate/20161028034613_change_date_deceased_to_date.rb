class ChangeDateDeceasedToDate < ActiveRecord::Migration
  def change
    change_column :fallen_heros, :date_deceased, :date
  end
end
