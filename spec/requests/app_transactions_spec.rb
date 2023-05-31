require 'rails_helper'

RSpec.describe 'AppTransactions', type: :request do
  describe 'GET /app_transactions' do
    it 'should response success' do
      get category_app_transactions_path(categories(:one))
      expect(response).to have_http_status(200)
    end
  end

  describe 'GET /app_transactions/new' do
    it 'should response success' do
      get new_category_app_transaction_path(categories(:one))
      expect(response).to have_http_status(200)
    end
  end
end
