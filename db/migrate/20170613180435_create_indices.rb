class CreateIndices < ActiveRecord::Migration[5.0]
  def change
    create_table :indices do |t|
      t.integer :product_id
      t.integer :category_id

      t.timestamps
    end
    add_index :indices, :product_id
    add_index :indices, :category_id
  end
end
