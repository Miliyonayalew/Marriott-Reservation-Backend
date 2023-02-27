require 'rails_helper'

RSpec.describe Booking, type: :model do
  before(:each) do
    @user = User.new(name: 'test', email: 'test@mail.com', password: '123456')
    @room = Room.create(name: 'Room 1', image: 'room1.png', description: 'Room description', price: 80, room_type: 'Single')
    @booking = Booking.create(user: @user, room: @room, start_date: '2023-03-01', end_date: '2023-03-10')
  end

  context 'Testing validations' do
    it 'booking created is valid' do
      expect(@booking).to be_valid
    end
    it 'booking is invalid if user field is null' do
      @booking.user = nil
      expect(@booking).to_not be_valid
    end
    it 'booking is invalid if room field is null' do
      @booking.room = nil
      expect(@booking).to_not be_valid
    end
    it 'booking is invalid if start_date field is null' do
      @booking.start_date = nil
      expect(@booking).to_not be_valid
    end
    it 'booking is invalid if end_date field is null' do
      @booking.end_date = nil
      expect(@booking).to_not be_valid
    end
    it 'booking is invalid if start_date field is null' do
      @booking.start_date = nil
      expect(@booking).to_not be_valid
    end
    # it 'room is invalid if image field is null or larger than 100' do
    #   @room.image = 'a' * 110
    #   expect(@room).to_not be_valid
    #   @room.image = nil
    #   expect(@room).to_not be_valid
    # end
    # it 'room is invalid if image field is null or larger than 400' do
    #   @room.description = 'a' * 410
    #   expect(@room).to_not be_valid
    #   @room.description = nil
    #   expect(@room).to_not be_valid
    # end
    # it 'room is invalid if price field is null or less than zero' do
    #   @room.price = '-1'
    #   expect(@room).to_not be_valid
    #   @room.price = nil
    #   expect(@room).to_not be_valid
    # end
    # it 'room is invalid if room_type field is null or larger than 100' do
    #   @room.room_type = 'a' * 110
    #   expect(@room).to_not be_valid
    #   @room.room_type = nil
    #   expect(@room).to_not be_valid
    # end
  end
end
