class CreateOrderDetails < ActiveRecord::Migration
  def change
    create_table :order_details do |t|
      t.references :order, index: true
      t.references :book, index: true

      t.timestamps null: false
    end
    add_foreign_key :order_details, :orders
    add_foreign_key :order_details, :books
  end
end
