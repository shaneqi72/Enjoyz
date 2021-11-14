class User < ApplicationRecord
  # after_crate: set_role
  rolify
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :email, :password, presence: true

  has_many :properties, dependent: :destroy, foreign_key: :owner_id
  has_many :booking_created, class_name: "Booking", foreign_key: :traveller_id, dependent: :destroy
  has_many :booking_received, class_name: "Booking", foreign_key: :property_id, dependent: :destroy

  def set_role
    self.add_role(:user) if self.roles.blank?
  end
end
