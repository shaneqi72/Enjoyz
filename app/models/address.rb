class Address < ApplicationRecord
    validates :postcode, :suburb, presence: true
    has_one :property
end
