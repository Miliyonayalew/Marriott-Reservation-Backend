require 'rails_helper'

RSpec.describe User, type: :model do
  before(:each) do
    @user = User.new(name: 'test', email: 'test@mail.com', password: '123456')
  end

  context 'Testing validations' do
    it 'user created is valid' do
      expect(@user).to be_valid
    end
    it 'user is invalid if name field is null or larger than 50' do
      @user.name = 'a' * 50
      expect(@user).to_not be_valid
      @user.name = nil
      expect(@user).to_not be_valid
    end
    it 'user is invalid if email field is null' do
      @user.email = nil
      expect(@user).to_not be_valid
    end
    it 'user is invalid if pasword field is null' do
      @user.password = nil
      expect(@user).to_not be_valid
    end
  end

  context 'Testing associations' do
    it 'user should have many bookings' do
      subject = User.reflect_on_association(:bookings)
      expect(subject.macro).to eq(:has_many)
    end
    it 'user should have many rooms' do
      subject = User.reflect_on_association(:rooms)
      expect(subject.macro).to eq(:has_many)
    end
  end
end
