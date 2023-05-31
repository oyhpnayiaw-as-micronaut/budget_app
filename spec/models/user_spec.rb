require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'validations' do
    let(:user) { User.new(email: '', password: '') }

    it 'should validate presence of email' do
      user.valid?
      expect(user.errors[:email]).to include("can't be blank")
    end

    it 'should validate presence of password' do
      user.valid?
      expect(user.errors[:password]).to include("can't be blank")
    end
  end

  describe 'associations' do
    it 'should have many categories' do
      user = User.reflect_on_association(:categories)
      expect(user.macro).to eq(:has_many)
    end

    it 'should have many app transactions' do
      user = User.reflect_on_association(:app_transactions)
      expect(user.macro).to eq(:has_many)
    end
  end
end
