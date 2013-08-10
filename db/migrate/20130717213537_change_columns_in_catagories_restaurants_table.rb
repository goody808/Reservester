class ChangeColumnsIncategoriesRestaurantsTable < ActiveRecord::Migration
  def change
  	rename_column :categories_restaurants, :restaurants_id, :restaurants_id
  	rename_column :categories_restaurants, :categories_id, :category_id
  end

  def down
  end
end
