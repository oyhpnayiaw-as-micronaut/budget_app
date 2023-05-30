require "test_helper"

class AppTransactionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @app_transaction = app_transactions(:one)
  end

  test "should get index" do
    get app_transactions_url
    assert_response :success
  end

  test "should get new" do
    get new_app_transaction_url
    assert_response :success
  end

  test "should create app_transaction" do
    assert_difference("AppTransaction.count") do
      post app_transactions_url, params: { app_transaction: { amount: @app_transaction.amount, name: @app_transaction.name, user_id: @app_transaction.user_id } }
    end

    assert_redirected_to app_transaction_url(AppTransaction.last)
  end

  test "should show app_transaction" do
    get app_transaction_url(@app_transaction)
    assert_response :success
  end

  test "should get edit" do
    get edit_app_transaction_url(@app_transaction)
    assert_response :success
  end

  test "should update app_transaction" do
    patch app_transaction_url(@app_transaction), params: { app_transaction: { amount: @app_transaction.amount, name: @app_transaction.name, user_id: @app_transaction.user_id } }
    assert_redirected_to app_transaction_url(@app_transaction)
  end

  test "should destroy app_transaction" do
    assert_difference("AppTransaction.count", -1) do
      delete app_transaction_url(@app_transaction)
    end

    assert_redirected_to app_transactions_url
  end
end
