class AddTableRestaurantsCatagories < ActiveRecord::Migration
  def change
  	create_table :restaurants_catagories, id: false do |t|
  		t.integer :restaurants_id
  		t.integer :catagories_id 
  	end
  end

  def down
  end
end
