class AppTransactionsController < ApplicationController
  before_action :set_app_transaction, only: %i[show edit update destroy]

  # GET /app_transactions or /app_transactions.json
  def index
    @app_transactions = Category.find(params[:category_id]).app_transactions
  end

  # GET /app_transactions/1 or /app_transactions/1.json
  def show; end

  # GET /app_transactions/new
  def new
    @categories = Category.where(user: current_user)
    @app_transaction = AppTransaction.new
  end

  # GET /app_transactions/1/edit
  def edit; end

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

  # PATCH/PUT /app_transactions/1 or /app_transactions/1.json
  def update
    respond_to do |format|
      if @app_transaction.update(app_transaction_params)
        format.html do
          redirect_to app_transaction_url(@app_transaction), notice: 'App transaction was successfully updated.'
        end
        format.json { render :show, status: :ok, location: @app_transaction }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @app_transaction.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /app_transactions/1 or /app_transactions/1.json
  def destroy
    @app_transaction.destroy

    respond_to do |format|
      format.html { redirect_to app_transactions_url, notice: 'App transaction was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_app_transaction
    @app_transaction = AppTransaction.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def app_transaction_params
    params.require(:app_transaction).permit(:name, :amount, :user_id, category_ids: [])
  end
end
