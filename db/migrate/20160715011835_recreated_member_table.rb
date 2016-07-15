class RecreatedMemberTable < ActiveRecord::Migration
  def change
    create_table :members do |t|
      t.string :first_name
      t.string :last_name
      t.string :title
      t.string :middle_name
      t.string :suffix
      t.string :company
      t.string :job_title
      t.string :name_on_card
      t.string :other_name_1
      t.string :other_name_2
      t.string :other_name_3
      t.string :country
      t.string :address
      t.string :city
      t.string :state
      t.string :email
      t.string :phone
      t.string :how_they_heard
      t.string :if_other
      t.string :zip_code

      t.timestamps null: false
    end
  end
end