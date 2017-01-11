class CreateCustomers < ActiveRecord::Migration[5.0]
  def change
    create_table :customers do |t|
      t.integer  :userid
      t.string :company_title
      t.string :short_name
      t.string :email
      t.string :phone_number
      t.string :fax_number
      t.string :iban
      t.string :address
      t.integer :customer_type
      t.string :nid #tcnumber or tax id
      t.string :tax_office

      t.timestamps
    end
  end
end
