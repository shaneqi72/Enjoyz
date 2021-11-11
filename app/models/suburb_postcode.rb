class SuburbPostcode < ApplicationRecord
    validates :postcode, :suburb, :state, :city, presence: true
    has_many :property_locations, dependent: :destroy
end
