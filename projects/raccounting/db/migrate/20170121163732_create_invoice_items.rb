class CreateInvoiceItems < ActiveRecord::Migration[5.0]
  def change
    create_table :invoice_items do |t|
      t.integer :quantity
      t.string :unit
      t.references :product, foreign_key: true
      t.references :stock_movement, foreign_key: true

      t.timestamps
    end
  end
end
