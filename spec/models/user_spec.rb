require 'rails_helper'

RSpec.describe User, type: :model do
  user = User.new(name: 'test', email: 'test@mail.com', password: '123456')
  before { user.save }

  it 'should have a name' do
    user.name = 'a' * 30
    expect(user).to_not be_valid
    user.name = nil
    expect(user).to_not be_valid
  end
end
