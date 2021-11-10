class SuburbPostcode < ApplicationRecord
    validates :postcode, :suburb, :city, presence: true
    has_many :property_locations
end
