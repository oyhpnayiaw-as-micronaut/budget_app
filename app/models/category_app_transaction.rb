class CategoryAppTransaction < ApplicationRecord
  belongs_to :category
  belongs_to :app_transaction
end
