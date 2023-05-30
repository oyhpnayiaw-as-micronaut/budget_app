class AppTransactionsController < ApplicationController
  # GET /app_transactions or /app_transactions.json
  def index
    category = Category.find(params[:category_id])
    @total_amount = category.total_amount
    @app_transactions = category.app_transactions.order(created_at: :desc)
  end

  # GET /app_transactions/new
  def new
    @categories = Category.where(user: current_user)
    @app_transaction = AppTransaction.new
  end

  # POST /app_transactions or /app_transactions.json
  def create
    ids = app_transaction_params[:category_ids]

    if ids.nil? || ids.empty?
      respond_to do |format|
        format.html do
          redirect_to new_category_app_transaction_url(params[:category_id]),
                      notice: 'Please select at least one category.'
        end
      end
      return
    end

    data = app_transaction_params.except(:category_ids)
    @app_transaction = AppTransaction.new(**data, user: current_user)

    respond_to do |format|
      if @app_transaction.save
        @app_transaction.categories << Category.find(ids)

        format.html do
          redirect_to category_app_transactions_url(params[:category_id]),
                      notice: 'App transaction was successfully created.'
        end
        format.json { render :show, status: :created, location: @app_transaction }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @app_transaction.errors, status: :unprocessable_entity }
      end
    end
  end

  private

  # Only allow a list of trusted parameters through.
  def app_transaction_params
    params.require(:app_transaction).permit(:name, :amount, :user_id, category_ids: [])
  end
end
