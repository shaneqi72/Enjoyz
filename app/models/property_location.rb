class PropertyLocation < ApplicationRecord
  validates :street_name, :street_name, presence: true
  belongs_to :user
  belongs_to :suburb_postcode
  has_one :property
end
