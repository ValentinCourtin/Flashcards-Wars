require "test_helper"

class UserControllerTest < ActionDispatch::IntegrationTest
  test "should get rank" do
    get user_rank_url
    assert_response :success
  end

  test "should get home" do
    get user_home_url
    assert_response :success
  end
end
