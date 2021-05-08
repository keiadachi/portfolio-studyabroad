class AddColumnToGuest < ActiveRecord::Migration[5.2]
  def change
    
    add_column :guests, :name, :string
    add_column :guests, :postal_code, :string
    add_column :guests, :address, :string
    add_column :guests, :phone_number, :string
    add_column :guests, :guest_status, :boolean, default: true
    
  end
end
