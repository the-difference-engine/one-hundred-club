class CreateDonations < ActiveRecord::Migration
  def change
    create_table :donations do |t|
      t.string :first_name
      t.string :last_name
      t.string :address
      t.string :title
      t.string :middle_name
      t.string :suffix
      t.string :country
      t.string :city
      t.string :state
      t.string :email
      t.string :phone
      t.string :zip_code
      t.integer :amount
      t.string :bt_transaction_id

      t.timestamps null: false
    end
  end
end
