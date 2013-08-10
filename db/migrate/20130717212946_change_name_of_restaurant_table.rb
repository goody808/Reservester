class ChangeNameOfRestaurantTable < ActiveRecord::Migration
  def change
  	rename_table :restaurants_categories, :categories_restaurants
  end

  def down
  end
end
