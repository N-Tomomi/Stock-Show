class CreateStocks < ActiveRecord::Migration[5.2]
  def change
    create_table :stocks do |t|
      t.integer :stock_code, limit: 4, null: false
      t.string :name, null: false
      t.timestamps

      t.index :stock_code, unique: true
    end
  end
end
