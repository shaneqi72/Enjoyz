class Amenity < ApplicationRecord
  validates :name, presence: true
  has_many :property_amenities, dependent: :destroy
  has_many :properties, through: :property_amenities
end
