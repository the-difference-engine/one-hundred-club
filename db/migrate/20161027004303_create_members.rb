class CreateMembers < ActiveRecord::Migration
  def change
    create_table :members do |t|
      t.string :title
      t.string :first_name
      t.string :middle_name
      t.string :last_name
      t.string :street_address
      t.string :secondary_address
      t.string :suffix
      t.string :city
      t.string :state
      t.string :zip_code
      t.string :country
      t.string :phone_number

      t.timestamps null: false
    end
  end
end
