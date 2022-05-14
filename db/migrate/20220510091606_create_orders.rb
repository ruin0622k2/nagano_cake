class CreateOrders < ActiveRecord::Migration[6.1]
  def change
    create_table :orders do |t|

      t.integer :customer_id
      t.integer :postal_code
      t.string :address
      t.string :name
      t.integer :payment_method
      t.integer :postage
      t.integer :price
      t.integer :order_status
      t.timestamps
    end
  end
end
