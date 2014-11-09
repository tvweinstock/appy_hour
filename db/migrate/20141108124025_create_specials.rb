class CreateSpecials < ActiveRecord::Migration
  def change
    create_table :specials do |t|
      t.string :name
      t.text :description
      t.datetime :created_at
      t.datetime :updated_at
      t.integer :category_id
      t.integer :restaurant_id

      t.timestamps
    end
  end
end
