class CreateProductOrders < ActiveRecord::Migration
  def change
    create_table :product_orders do |t|
      t.integer :product_id
      t.integer :order_id
      t.decimal :quantity
      t.decimal :price

      t.timestamps
    end
  end
end
