class CreateDividends < ActiveRecord::Migration[5.2]
  def change
    create_table :dividends do |t|
      t.references :stock, foreign_key: true
      t.integer :dividend, null: false
      t.integer :stock_num, null: false
      t.datetime :year_month
      t.text :comment
      t.timestamps
    end
  end
end
