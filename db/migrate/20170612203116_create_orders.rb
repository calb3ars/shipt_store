class CreateOrders < ActiveRecord::Migration[5.0]
  def change
    create_table :orders do |t|
      t.integer :customer_id, null: false
      t.string :status, null: false, default: "Waiting for Delivery"

      t.timestamps null: false
    end
    add_index :orders, :customer_id
  end
end
