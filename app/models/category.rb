class Category < ApplicationRecord
  belongs_to :user

  has_one_attached :icon, dependent: :destroy

  has_many :category_app_transactions, dependent: :destroy
  has_many :app_transactions, through: :category_app_transactions
end
