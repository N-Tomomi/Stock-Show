class CreateGifts < ActiveRecord::Migration[5.2]
  def change
    create_table :gifts do |t|
      t.references :stock, foreign_key: true
      t.string :gift_name, null: false
      t.integer :value
      t.datetime :year_month
      t.text :comment
      t.timestamps
    end
  end
end
