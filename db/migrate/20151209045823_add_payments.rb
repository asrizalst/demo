class AddPayments < ActiveRecord::Migration
  def change
  	add_column :users, :payments, :boolean
  	add_column :users, :stripeid, :string
  end
end
