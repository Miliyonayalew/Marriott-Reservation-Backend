class Room < ApplicationRecord
  has_many :bookings, dependent: :destroy
  has_many :users, through: :bookings, dependent: :destroy
end
