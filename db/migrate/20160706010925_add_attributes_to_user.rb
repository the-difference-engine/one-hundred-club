class AddAttributesToUser < ActiveRecord::Migration
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :title, :string
    add_column :users, :middle_name, :string
    add_column :users, :suffix, :string
    add_column :users, :company, :string
    add_column :users, :job_title, :string
    add_column :users, :name_on_card, :string
    add_column :users, :other_name_1, :string
    add_column :users, :other_name_2, :string
    add_column :users, :other_name_3, :string
    add_column :users, :country, :string
    add_column :users, :address, :string
    add_column :users, :city, :string
    add_column :users, :state, :string
    add_column :users, :phone, :string
    add_column :users, :how_they_heard, :string
    add_column :users, :if_other, :string
  end
end
