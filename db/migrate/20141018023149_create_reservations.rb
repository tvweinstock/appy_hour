class CreateReservations < ActiveRecord::Migration
  def change
    create_table :reservations do |t|
      t.belongs_to :restaurant
      t.integer :party_size
      t.datetime :start_time
      t.timestamps
    end
  end
end
