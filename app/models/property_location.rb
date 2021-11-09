class PropertyLocation < ApplicationRecord
  belongs_to :user
  belongs_to :suburb_postcode
  has_one :property
end
