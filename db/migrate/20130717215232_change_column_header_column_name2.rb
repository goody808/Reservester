class ChangeColumnHeaderColumnName2 < ActiveRecord::Migration
  def change
  	rename_column :categories_restaurants, :restaurants_id, :restaurant_id
  	
  end

  def down
  end
end
