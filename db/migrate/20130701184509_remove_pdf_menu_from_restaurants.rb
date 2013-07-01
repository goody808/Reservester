class RemovePdfMenuFromRestaurants < ActiveRecord::Migration
  def up
 	remove_column :restaurants, :pdf_menu
  end


  def down
  end
end
