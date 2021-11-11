class User < ApplicationRecord
  rolify
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :email, :password, presence: true

  has_one :profile, dependent: :destroy
  has_many :property_locations, dependent: :destroy

  has_many :booking_created, class_name: "Booking", foreign_key: :traveller_id, dependent: :destroy
  has_many :booking_received, class_name: "Booking", foreign_key: :host_id, dependent: :destroy
end
