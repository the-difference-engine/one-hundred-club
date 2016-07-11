class AddDonationAmountToDonations < ActiveRecord::Migration
  def change
    add_column :donations, :amount, :integer  
  end
end
