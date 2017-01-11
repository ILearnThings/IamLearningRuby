class Customer < ApplicationRecord
    validates:short_name,  presence: true,
                            length: {minimum: 5, maximum: 50}    
end
