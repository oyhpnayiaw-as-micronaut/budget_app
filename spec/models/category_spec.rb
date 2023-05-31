require 'rails_helper'

RSpec.describe Category, type: :model do
  describe 'validations' do
    let(:category) { Category.new }

    it 'should validate presence of user' do
      category.valid?
      expect(category.errors[:user]).to include('must exist')
    end
  end

  describe 'associations' do
    it 'should belong to user' do
      category = Category.reflect_on_association(:user)
      expect(category.macro).to eq(:belongs_to)
    end

    it 'should have many transactions' do
      category = Category.reflect_on_association(:app_transactions)
      expect(category.macro).to eq(:has_many)
    end
  end
end
