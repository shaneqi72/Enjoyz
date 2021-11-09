class Property < ApplicationRecord
  belongs_to :property_type
  belongs_to :property_location
  has_many :property_amenities, dependent: :destroy
  has_many :amenities, through: :property_amenities
end
