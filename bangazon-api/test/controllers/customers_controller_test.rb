require 'test_helper'

class CustomersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @customer = customers(:one)
  end

  test "should get index" do
    get customers_url, as: :json
    assert_response :success
  end

  test "should create customer" do
    assert_difference('Customer.count') do
      post customers_url, params: { customer: { active: @customer.active, city: @customer.city, date_customer_created: @customer.date_customer_created, email: @customer.email, first_name: @customer.first_name, last_date_used: @customer.last_date_used, last_name: @customer.last_name, street_address: @customer.street_address, us_state: @customer.us_state, zip_code: @customer.zip_code } }, as: :json
    end

    assert_response 201
  end

  test "should show customer" do
    get customer_url(@customer), as: :json
    assert_response :success
  end

  test "should update customer" do
    patch customer_url(@customer), params: { customer: { active: @customer.active, city: @customer.city, date_customer_created: @customer.date_customer_created, email: @customer.email, first_name: @customer.first_name, last_date_used: @customer.last_date_used, last_name: @customer.last_name, street_address: @customer.street_address, us_state: @customer.us_state, zip_code: @customer.zip_code } }, as: :json
    assert_response 200
  end

  test "should destroy customer" do
    assert_difference('Customer.count', -1) do
      delete customer_url(@customer), as: :json
    end

    assert_response 204
  end
end
