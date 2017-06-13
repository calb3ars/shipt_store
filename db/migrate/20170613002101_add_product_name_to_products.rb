class AddProductNameToProducts < ActiveRecord::Migration[5.0]
  def change
    add_column :products, :product_name, :string
    add_column :products, :in_stock, :boolean, default: false
  end
end
