require 'test_helper'

class CommentsControllerTest < ActionDispatch::IntegrationTest
  include Devise::Test::IntegrationHelpers
  setup do
    @comment = comments(:one)
    @user = users(:one)
    sign_in @user
  end
end
#  test "should get index" do
#    get post_comment_url
#    assert_response :success
#  end

#  test "should get new" do
#    get new_post_comment_url
#    assert_response :success
#  end

#  test "should create comment" do
#    assert_difference('Comment.count') do
#      post post_comment_url, params: { comment: { body: @comment.body } }
#    end

#    assert_redirected_to post_comments_url(Comment.last)
#  end
#end
#  test "should show comment" do
#    get post_comment_url(@comment)
#    assert_response :success
#  end

  #test "should get edit" do
  #  get edit_post_comment_url(@comment)
  #  assert_response :success
#  end

#  test "should destroy comment" do
  #  assert_difference('Comment.count', -1) do
  #    delete post_comment_url(@comment)
  #  end

  #  assert_redirected_to post_comment_url
#  end
#end
