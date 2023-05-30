json.extract! app_transaction, :id, :name, :amount, :user_id, :created_at, :updated_at
json.url app_transaction_url(app_transaction, format: :json)
