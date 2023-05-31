require 'rails_helper'

RSpec.describe 'Categories', type: :system do
  describe 'index' do
    before(:all) do
      Capybara.reset_sessions!
    end

    before do
      visit categories_path
    end

    it 'should have a category name' do
      categories.each do |category|
        expect(page).to have_content(category.name)
      end
    end

    it 'should have total amount' do
      categories.each do |category|
        expect(page).to have_content(category.total_amount)
      end
    end

    it 'should redirect to app transactions page' do
      click_link(categories(:one).name)

      expect(page).to have_current_path(category_app_transactions_path(categories(:one)))
    end

    it 'should have a link to new category' do
      expect(page).to have_link(href: new_category_path)
    end
  end
end
