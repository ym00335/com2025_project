require 'test_helper'

class CommentTest < ActiveSupport::TestCase
  
    test 'should not save empty comment' do
      comment = Comment.new

      comment.save
      refute comment.valid?
    end

    test 'should save valid comment' do
      comment = Comment.new

      comment.user_id = "1"
      comment.post_id = "1"
      comment.body = "Sup"


      comment.save
      assert comment.valid?
    end

  end
