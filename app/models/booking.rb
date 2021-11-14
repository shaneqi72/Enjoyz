class Booking < ApplicationRecord
  belongs_to :traveller, class_name: "User", foreign_key: :traveller_id
  belongs_to :property
end
