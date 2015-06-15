class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :book_id
      t.string :book_name
      t.string :auther

      t.timestamps null: false
    end
  end
end
