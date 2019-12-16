require 'test_helper'

class HomeControllerTest < ActionDispatch::IntegrationTest
  include Devise::Test::IntegrationHelpers
  test "should get home" do
    get root_url
    assert_response :success

    assert_select 'title', 'PaintBlock'
    assert_select 'li', 'Home'
  end

end
