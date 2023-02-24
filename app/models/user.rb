class User < ApplicationRecord
  has_many :bookings, dependent: :destroy
  has_many :rooms, through: :bookings, dependent: :destroy

  validates :name, presence: true, length: { maximum: 50 }
end
