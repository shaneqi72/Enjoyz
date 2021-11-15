class Address < ApplicationRecord
    validates :postcode, :suburb, :street_name, :street_number, presence: true
    has_one :property
end
