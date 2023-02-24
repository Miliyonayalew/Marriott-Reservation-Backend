class Room < ApplicationRecord
  has_many :bookings, dependent: :destroy
  has_many :users, through: :bookings, dependent: :destroy

  validates :name, :price, :description, :image, :type, presence: true
  validates :name, :image, :type, length: { maximum: 100 }
  validates :description, length: { maximum: 400 }
  validate :price, numericality: { greater_than_or_equal_to: 0 }
end
