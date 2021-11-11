class Booking < ApplicationRecord
  belongs_to :traveller, class_name: "User", foreign_key: :traveller_id
  belongs_to :host, class_name: "User", foreign_key: :host_id
  belongs_to :property
end
