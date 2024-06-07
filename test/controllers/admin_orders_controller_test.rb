require "test_helper"

class AdminOrdersControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get admin_orders_index_url
    assert_response :success
  end

  test "should get show" do
    get admin_orders_show_url
    assert_response :success
  end

  test "should get update" do
    get admin_orders_update_url
    assert_response :success
  end

  test "should get destroy" do
    get admin_orders_destroy_url
    assert_response :success
  end
end
