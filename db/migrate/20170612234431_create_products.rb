class CreateProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :products do |t|
      t.integer :order_id
      t.integer :order_count
      t.integer :category_mapping

      t.timestamps
    end
    add_index :products, :order_id
  end
end
