require 'rails_helper'

RSpec.describe AppTransaction, type: :model do
  describe 'validations' do
    let(:app_transaction) { AppTransaction.new }

    it 'should validate presence of user' do
      app_transaction.valid?
      expect(app_transaction.errors[:user]).to include('must exist')
    end
  end

  describe 'associations' do
    it 'should belong to user' do
      app_transaction = AppTransaction.reflect_on_association(:user)
      expect(app_transaction.macro).to eq(:belongs_to)
    end

    it 'should have many transactions' do
      app_transaction = AppTransaction.reflect_on_association(:categories)
      expect(app_transaction.macro).to eq(:has_many)
    end
  end
end
