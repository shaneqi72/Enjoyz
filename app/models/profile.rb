class Profile < ApplicationRecord
  validates :first_name, :last_name, :contact_number, presence: true
  belongs_to :user
end
