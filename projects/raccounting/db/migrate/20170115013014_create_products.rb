class CreateProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :products do |t|
      t.string :name
      t.string :code
      t.integer :amount
      t.string :purchase_sales_unit
      t.decimal :purchase_price
      t.decimal :sales_price
      t.integer :vat
      t.references :company, foreign_key: true

      t.timestamps
    end
  end
end
