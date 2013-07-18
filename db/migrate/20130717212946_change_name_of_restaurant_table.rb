class ChangeNameOfRestaurantTable < ActiveRecord::Migration
  def change
  	rename_table :restaurants_catagories, :catagories_restaurants
  end

  def down
  end
end
