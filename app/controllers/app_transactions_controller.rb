class AppTransactionsController < ApplicationController
  before_action :set_app_transaction, only: %i[ show edit update destroy ]

  # GET /app_transactions or /app_transactions.json
  def index
    @app_transactions = AppTransaction.all
  end

  # GET /app_transactions/1 or /app_transactions/1.json
  def show
  end

  # GET /app_transactions/new
  def new
    @app_transaction = AppTransaction.new
  end

  # GET /app_transactions/1/edit
  def edit
  end

  # POST /app_transactions or /app_transactions.json
  def create
    @app_transaction = AppTransaction.new(app_transaction_params)

    respond_to do |format|
      if @app_transaction.save
        format.html { redirect_to app_transaction_url(@app_transaction), notice: "App transaction was successfully created." }
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
        format.html { redirect_to app_transaction_url(@app_transaction), notice: "App transaction was successfully updated." }
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
      format.html { redirect_to app_transactions_url, notice: "App transaction was successfully destroyed." }
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
      params.require(:app_transaction).permit(:name, :amount, :user_id)
    end
end
