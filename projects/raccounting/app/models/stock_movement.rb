class StockMovement < ApplicationRecord
    belongs_to :company
    has_many :invoice_item
end
