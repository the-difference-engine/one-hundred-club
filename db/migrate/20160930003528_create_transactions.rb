class CreateTransactions < ActiveRecord::Migration
  def change
    create_table :transactions do |t|
      t.decimal :amount, precision: 15, scale: 2
      t.string :payment_type
      t.string :user_profile_id

      t.timestamps null: false
    end
  end
end
