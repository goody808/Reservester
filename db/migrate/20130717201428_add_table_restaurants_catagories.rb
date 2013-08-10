class AddTableRestaurantscategories < ActiveRecord::Migration
  def change
  	create_table :restaurants_categories, id: false do |t|
  		t.integer :restaurants_id
  		t.integer :categories_id 
  	end
  end

  def down
  end
end
