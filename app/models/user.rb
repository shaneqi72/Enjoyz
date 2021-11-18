class User < ApplicationRecord
  # finds_all bookings that have my property_ids
  before_create :set_role
  rolify
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :email, :password, presence: true
  validates :email, uniqueness: {message: 'This email has already exists'}

  has_many :properties, dependent: :destroy, foreign_key: :owner_id
  has_many :booking_created, class_name: "Booking", foreign_key: :traveller_id, dependent: :destroy
  # has_many :booking_received, class_name: "Booking", foreign_key: :property_id, dependent: :destroy

  def set_role
    # self.add_role(:host) if :role == 1
    # self.add_role(:user) if :role == 0
    add_role(:host) if role == 1
    add_role(:user) if role == 0
  end
  
  def find_my_property_bookings
    # finds_all bookings that have my property_ids
  end

end

# [Booking] = @user.find_bookings