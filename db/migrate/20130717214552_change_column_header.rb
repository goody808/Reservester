class ChangeColumnHeader < ActiveRecord::Migration
  def create
  	rename_column :catagories_restaurants, :restaurants_id, :restaurant_id
  end

  def down
  end
end
