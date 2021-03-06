class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.string :order_id
      t.string :date
      t.references :customer, index: true

      t.timestamps null: false
    end
    add_foreign_key :orders, :customers
  end
end
