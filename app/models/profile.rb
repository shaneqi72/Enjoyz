class Profile < ApplicationRecord
  validates :first_name, :last_name, presence: true
  validates :contact_number, presence: true, numericality: true
  belongs_to :user
end
