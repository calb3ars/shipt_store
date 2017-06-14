class CreateProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :products do |t|
      t.integer :order_id
      t.string :product_name
      t.integer :order_count
      t.boolean :in_stock, default: false
      t.timestamps
    end
    add_index :products, :order_id
  end
end
