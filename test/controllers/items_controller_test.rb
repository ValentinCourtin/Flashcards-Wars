require "test_helper"

class ItemsControllerTest < ActionDispatch::IntegrationTest
  test "should get use" do
    get items_use_url
    assert_response :success
  end

  test "should get buy" do
    get items_buy_url
    assert_response :success
  end
end
