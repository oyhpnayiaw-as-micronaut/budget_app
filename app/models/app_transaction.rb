class AppTransaction < ApplicationRecord
  belongs_to :user

  has_many :category_app_transactions, dependent: :destroy
  has_many :categories, through: :category_app_transactions
end
