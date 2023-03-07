class BookingSerializer < ActiveModel::Serializer
  belongs_to :room
  attributes :id, :start_date, :end_date
end
