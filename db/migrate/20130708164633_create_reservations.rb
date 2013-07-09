class CreateReservations < ActiveRecord::Migration
  def change
    create_table :reservations do |t|
  		t.string :name
  		t.datetime :time
  		t.integer :party_size
  		t.integer :restaurant_id
      t.timestamps
    end
  end
end
