class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :email, :password, presence: true

  has_one :profile
  has_many :property_locations

  has_many :booking_created, class_name: "Booking", foreign_key: :traveller_id
  has_many :booking_received, class_name: "Booking", foreign_key: :host_id
end
