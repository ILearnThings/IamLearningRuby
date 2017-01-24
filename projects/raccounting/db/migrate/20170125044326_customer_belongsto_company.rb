class CustomerBelongstoCompany < ActiveRecord::Migration[5.0]
  def self.up
    change_table :customers do |t|
      t.references :company, foreign_key: true
    end
  end
end
 