class CreateUserProfiles < ActiveRecord::Migration
  def change
    create_table :user_profiles do |t|
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
      t.string :how_heard
      t.string :if_other
      t.string :company
      t.string :job_title
      t.string :name_on_card
      t.string :other_name_1
      t.string :other_name_2
      t.string :other_name_3
      t.string :member_status

      t.timestamps null: false
    end
  end
end
