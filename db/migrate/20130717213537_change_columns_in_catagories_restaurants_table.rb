class ChangeColumnsInCatagoriesRestaurantsTable < ActiveRecord::Migration
  def change
  	rename_column :catagories_restaurants, :restaurants_id, :restaurants_id
  	rename_column :catagories_restaurants, :catagories_id, :catagory_id
  end

  def down
  end
end
