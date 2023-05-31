require 'rails_helper'

RSpec.describe 'AppTransactions', type: :system do
  describe 'index' do
    before(:all) do
      Capybara.reset_sessions!
    end

    before do
      visit category_app_transactions_path(categories(:one))
    end

    it 'should have total amount' do
      expect(page).to have_content(categories(:one).total_amount)
    end

    it 'should have transaction name' do
      categories(:one).app_transactions.each do |transaction|
        expect(page).to have_content(transaction.name)
      end
    end

    it 'should have transaction amount' do
      categories(:one).app_transactions.each do |transaction|
        expect(page).to have_content(transaction.amount)
      end
    end

    it 'should have new transaction link' do
      expect(page).to have_link(href: new_category_app_transaction_path(categories(:one)))
    end
  end
end
