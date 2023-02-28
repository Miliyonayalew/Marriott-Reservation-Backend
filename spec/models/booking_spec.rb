require 'rails_helper'
require 'date'

RSpec.describe Booking, type: :model do
  before(:each) do
    @user = User.new(name: 'test', email: 'test@mail.com', password: '123456')
    @room = Room.create(name: 'Room 1', image: 'room1.png', description: 'Room description', price: 80,
                        room_type: 'Single')
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
    it 'booking is invalid if start_date field is before today' do
      @booking.start_date = Date.today - 1.day
      expect(@booking).to_not be_valid
    end
    it 'booking is invalid if start_date field is equal or after end_date' do
      @booking.start_date = Date.today + 7.day
      @booking.end_date = Date.today + 6.day
      expect(@booking).to_not be_valid
      @booking.end_date = Date.today + 7.day
      expect(@booking).to_not be_valid
    end
  end

  context 'Testing associations' do
    it 'booking should belong to a user' do
      subject = Booking.reflect_on_association(:user)
      expect(subject.macro).to eq(:belongs_to)
    end
    it 'booking should belong to a room' do
      subject = Booking.reflect_on_association(:room)
      expect(subject.macro).to eq(:belongs_to)
    end
  end
end
