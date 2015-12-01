class AddPriceProducts < ActiveRecord::Migration
  def change
  	add_column :products, :price, :interger
  end
end
