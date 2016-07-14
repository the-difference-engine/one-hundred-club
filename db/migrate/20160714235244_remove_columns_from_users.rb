class RemoveColumnsFromUsers < ActiveRecord::Migration
  def change
    remove_column :users, :first_name, :string    
    remove_column :users, :last_name, :string    
    remove_column :users, :title, :string    
    remove_column :users, :middle_name, :string    
    remove_column :users, :suffix, :string    
    remove_column :users, :company, :string    
    remove_column :users, :job_title, :string    
    remove_column :users, :name_on_card, :string    
    remove_column :users, :other_name_1, :string
    remove_column :users, :other_name_2, :string    
    remove_column :users, :other_name_3, :string
    remove_column :users, :country, :string
    remove_column :users, :address, :string    
    remove_column :users, :city, :string    
    remove_column :users, :state, :string    
    remove_column :users, :phone, :string    
    remove_column :users, :how_they_heard, :string    
    remove_column :users, :if_other, :string    
  end
end
