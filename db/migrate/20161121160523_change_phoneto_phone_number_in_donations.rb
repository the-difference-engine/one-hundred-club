class ChangePhonetoPhoneNumberInDonations < ActiveRecord::Migration
  def change
    rename_column :donations, :phone, :phone_number
  end
end
