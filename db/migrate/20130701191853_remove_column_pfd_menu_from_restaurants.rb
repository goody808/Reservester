class RemoveColumnPfdMenuFromRestaurants < ActiveRecord::Migration
  def up
  	remove_column :restaurants, :pfd_menu
  end

  def down
  end
end
