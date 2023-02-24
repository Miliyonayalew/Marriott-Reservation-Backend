class User < ApplicationRecord
  has_many :bookings, dependent: :destroy
  has_many :rooms, through: :bookings, dependent: :destroy
end
