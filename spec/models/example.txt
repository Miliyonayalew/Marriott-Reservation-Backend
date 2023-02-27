require 'rails_helper'

RSpec.describe Expense, type: :model do
  subject do
    User.create(name: 'Miliyon', email: 'miliayalew@gmail.com', password: '123456')
  end

  before(:each) do
    @expense = Expense.new(name: 'Shoes', amount: 100, author_id: subject.id)
  end

  context 'Testing validations' do
    it 'Validation should be successful' do
      expect(@expense).to be_valid
    end

    it 'Expense should have a name' do
      @expense.name = nil
      expect(@expense).to_not be_valid
    end

    it 'Expense should have an amount' do
      @expense.amount = nil
      expect(@expense).to_not be_valid
    end

    it 'Expense should have a greater than or equal to 0 amount' do
      @expense.amount = -1
      expect(@expense).to_not be_valid
    end

    it 'Expense should have a author' do
      @expense.author_id = nil
      expect(@expense).to_not be_valid
    end
  end

  context 'Testing associations' do
    it 'Expense should belong to an author' do
      subject = Expense.reflect_on_association(:author)
      expect(subject.macro).to eq(:belongs_to)
    end

    it 'Expense should have many category_expenses' do
      subject = Expense.reflect_on_association(:category_expenses)
      expect(subject.macro).to eq(:has_many)
    end

    it 'Expense should have many categories' do
      subject = Expense.reflect_on_association(:categories)
      expect(subject.macro).to eq(:has_many)
    end
  end
end