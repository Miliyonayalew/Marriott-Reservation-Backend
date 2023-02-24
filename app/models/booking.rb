class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :room

  validates :user, :room, :start_date, :end_date, presence: true
  validates :start_date, comparison: { greater_than_or_equal_to: Date.today, message: 'must be today or later' }
  validates :end_date, comparison: { greater_than: :start_date, message: 'must be after start date' }
end
