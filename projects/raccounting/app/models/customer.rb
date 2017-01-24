class Customer < ApplicationRecord
    enum customer_type: [ :legal_entity, :real_person]

    validates:short_name,  presence: true,
                            length: {minimum: 5, maximum: 50}


    belongs_to :company

end
