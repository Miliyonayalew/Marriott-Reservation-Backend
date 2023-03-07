class Room < ApplicationRecord
  has_many :bookings, dependent: :destroy
  has_many :users, through: :bookings, dependent: :destroy

  validates :name, :price, :description, :image, :room_type, presence: true
  validates :name, :image, :room_type, length: { maximum: 500 }
  validates :description, length: { maximum: 400 }
  validates :price, numericality: { greater_than_or_equal_to: 0 }
end
