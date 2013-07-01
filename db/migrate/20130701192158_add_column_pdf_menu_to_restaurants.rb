class AddColumnPdfMenuToRestaurants < ActiveRecord::Migration
  def change
    add_column :restaurants, :pdf_menu, :string
  end
end
