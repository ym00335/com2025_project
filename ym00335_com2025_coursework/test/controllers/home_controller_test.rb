require 'test_helper'

class HomeControllerTest < ActionDispatch::IntegrationTest
  test "should get post" do
    get home_post_url
    assert_response :success
  end

end
