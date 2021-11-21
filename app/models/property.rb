class Property < ApplicationRecord
  validates :name, :description, :bedroom_count, :bed_count, :bathroom_count, :availability, presence: true
  validates :bedroom_count, :bed_count, :bathroom_count, numericality: { greater_than: 0, less_than_or: 20 }

  belongs_to :owner, class_name: "User", foreign_key: :owner_id
  belongs_to :property_type, foreign_key: :property_type_id
  belongs_to :address, dependent: :destroy

  accepts_nested_attributes_for :address

  has_one_attached :property_image

  has_many :property_amenities, dependent: :destroy
  has_many :amenities, through: :property_amenities
  has_many :bookings, dependent: :destroy

  def amenity_exist
    # errors.add(:base, 'amenity must exist') if
  end
end
