require "test_helper"

class RegestraitionsControllerTest < ActionDispatch::IntegrationTest
  test "should get login" do
    get regestraitions_login_url
    assert_response :success
  end

  test "should get logout" do
    get regestraitions_logout_url
    assert_response :success
  end
end
