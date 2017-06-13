class CreateCategoryMappings < ActiveRecord::Migration[5.0]
  def change
    create_table :category_mappings do |t|
      t.integer :product_id
      t.integer :category_id

      t.timestamps
      t.index ["product_id", "category_id"], name: "unique_mapping_product_to_category", unique: true
    end
    add_index :category_mappings, :product_id
    add_index :category_mappings, :category_id
  end
end