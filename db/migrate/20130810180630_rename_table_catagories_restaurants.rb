class RenameTableCatagoriesRestaurants < ActiveRecord::Migration
  def up
  	rename_table :catagories_restaurants, :categories_restaurants

  end

  def down
  end
end
