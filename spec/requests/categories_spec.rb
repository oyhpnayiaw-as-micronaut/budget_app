require 'rails_helper'

RSpec.describe 'Categories', type: :request do
  describe 'GET /categories' do
    it 'should response success' do
      get categories_path
      expect(response).to have_http_status(200)
    end
  end

  describe 'GET /categories/new' do
    it 'should response success' do
      get new_category_path
      expect(response).to have_http_status(200)
    end
  end
end
