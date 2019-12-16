require 'test_helper'

class PostTest < ActiveSupport::TestCase

  setup do
    @user = users(:one)
  end

  test 'should not save empty post' do
    post = Post.new

    post.save
    refute post.valid?
  end

  test 'should save valid post' do
    post = Post.new

    post.user = @user
    post.title = "Sup"
    post.description = "I enjoy this"
    post.image = "thumb_art.jpg"

    post.save
    assert post.valid?
  end

  test 'should not save duplicate post title' do
    post1 = Post.new

    post1.user = @user
    post1.title = "Sup"
    post1.description = "I enjoy this"
    post1.image = "thumb_art.jpg"
    post1.save
    assert post1.valid?

    post2 = Post.new

    post2.user = @user
    post2.title = "Sup"
    post2.description = "I enjoy this"
    post2.image = "thumb_art.jpg"
    post2.save
    refute post2.valid?
  end
end
