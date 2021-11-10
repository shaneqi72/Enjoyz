class Booking < ApplicationRecord
  belongs_to :traveller, class_name: "User"
  belongs_to :host, class_name: "User"
  belongs_to :property
end
