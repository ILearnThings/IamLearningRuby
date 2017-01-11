class Category < ApplicationRecord
    enum type: [ :sales, :expense, :employee, :customer]
end
