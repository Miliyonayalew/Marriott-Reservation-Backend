require 'rails_helper'

RSpec.describe Room, type: :model do
  before(:each) do
    @room = Room.create(name: 'Room 1', image: 'room1.png', description: 'Room description', price: 80, room_type: 'Single')
  end

  context 'Testing validations' do
    it 'room created is valid' do
      expect(@room).to be_valid
    end
    it 'room is invalid if name field is null or larger than 100' do
      @room.name = 'a' * 110
      expect(@room).to_not be_valid
      @room.name = nil
      expect(@room).to_not be_valid
    end
    it 'room is invalid if image field is null or larger than 100' do
      @room.image = 'a' * 110
      expect(@room).to_not be_valid
      @room.image = nil
      expect(@room).to_not be_valid
    end
    it 'room is invalid if image field is null or larger than 400' do
      @room.description = 'a' * 410
      expect(@room).to_not be_valid
      @room.description = nil
      expect(@room).to_not be_valid
    end
    it 'room is invalid if price field is null or less than zero' do
      @room.price = '-1'
      expect(@room).to_not be_valid
      @room.price = nil
      expect(@room).to_not be_valid
    end
    it 'room is invalid if room_type field is null or larger than 100' do
      @room.room_type = 'a' * 110
      expect(@room).to_not be_valid
      @room.room_type = nil
      expect(@room).to_not be_valid
    end
  end

  context 'Testing associations' do
    it 'room should have many bookings' do
      subject = Room.reflect_on_association(:bookings)
      expect(subject.macro).to eq(:has_many)
    end
    it 'room should have many users' do
      subject = Room.reflect_on_association(:users)
      expect(subject.macro).to eq(:has_many)
    end
  end
end
