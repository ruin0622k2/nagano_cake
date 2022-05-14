class CreateOrdersDetails < ActiveRecord::Migration[6.1]
  def change
    create_table :orders_details do |t|

      t.integer :order_id
      t.integer :item
      t.integer :price
      t.integer :production_status
      t.integer :amount
      t.timestamps
    end
  end
end
