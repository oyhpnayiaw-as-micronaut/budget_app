require "application_system_test_case"

class AppTransactionsTest < ApplicationSystemTestCase
  setup do
    @app_transaction = app_transactions(:one)
  end

  test "visiting the index" do
    visit app_transactions_url
    assert_selector "h1", text: "App transactions"
  end

  test "should create app transaction" do
    visit app_transactions_url
    click_on "New app transaction"

    fill_in "Amount", with: @app_transaction.amount
    fill_in "Name", with: @app_transaction.name
    fill_in "User", with: @app_transaction.user_id
    click_on "Create App transaction"

    assert_text "App transaction was successfully created"
    click_on "Back"
  end

  test "should update App transaction" do
    visit app_transaction_url(@app_transaction)
    click_on "Edit this app transaction", match: :first

    fill_in "Amount", with: @app_transaction.amount
    fill_in "Name", with: @app_transaction.name
    fill_in "User", with: @app_transaction.user_id
    click_on "Update App transaction"

    assert_text "App transaction was successfully updated"
    click_on "Back"
  end

  test "should destroy App transaction" do
    visit app_transaction_url(@app_transaction)
    click_on "Destroy this app transaction", match: :first

    assert_text "App transaction was successfully destroyed"
  end
end
