class RenameCatagoriesTable < ActiveRecord::Migration
  def up
  	rename_table :catagories, :categories
  end

  def down
  end
end
