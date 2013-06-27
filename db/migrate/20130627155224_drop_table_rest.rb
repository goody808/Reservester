class DropTableRest < ActiveRecord::Migration
  def up
  	drop_table :restaurants
  end

  def down
  end
end
