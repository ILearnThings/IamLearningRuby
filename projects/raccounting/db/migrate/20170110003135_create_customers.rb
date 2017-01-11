class CreateCustomers < ActiveRecord::Migration[5.0]
  def change
    create_table :customers do |t|
      t.integer  : userid
      t.string :short_name
      t.string :cliend_id
      t.string :email
      t.string :phone_number
      t.string :fax_number
      t.string :iban
      t.string :address
      t.bool :customer_type
      t.string :nid #tcnumber or tax id
      t.string :tax_office

      t.timestamps
    end
  end
end
