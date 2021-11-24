class Booking < ApplicationRecord
  enum accepted: %i[pending accept deny]
  resourcify
  belongs_to :traveller, class_name: "User", foreign_key: :traveller_id
  belongs_to :property
end
