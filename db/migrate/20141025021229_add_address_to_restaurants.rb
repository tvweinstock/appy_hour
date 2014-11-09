class AddAddressToRestaurants < ActiveRecord::Migration
  def change
    add_column :restaurants, :address, :string
    add_column :restaurants, :phone, :string
    add_column :restaurants, :picture, :string
    add_column :restaurants, :description, :text
    add_column :restaurants, :category_id, :integer
  end
end
