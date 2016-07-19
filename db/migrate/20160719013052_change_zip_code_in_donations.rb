class ChangeZipCodeInDonations < ActiveRecord::Migration
  def change
    change_column :donations, :zip_code, :string
  end
end
