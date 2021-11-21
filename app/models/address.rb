class Address < ApplicationRecord
  validates :postcode, :suburb, :street_name, :street_number, presence: true
  has_one :property

  validates :postcode, uniqueness: {
    scope: %i[suburb street_number street_name],
    message: 'This property has been created another host'
  }
end
