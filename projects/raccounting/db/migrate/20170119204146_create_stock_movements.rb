class CreateStockMovements < ActiveRecord::Migration[5.0]
  def change
    create_table :stock_movements do |t|
      t.string :description
      t.string :address
      t.string :town
      t.string :city
      t.datetime :date_of_issuance
      t.string :waybill_number
      t.datetime :actual_date_of_shipment
      t.int :supplier_id
      t.boolean :is_entry

      t.timestamps
    end
  end
end
