class AddColumnToRestaurants < ActiveRecord::Migration
  def change
    add_column :restaurants, :pfd_menu, :string
  end
end
