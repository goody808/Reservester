class RenameColumnCatagoryId < ActiveRecord::Migration
  def up
  
  rename_column :categories_restaurants, :catagory_id, :category_id
  end

  def down
  end
end
