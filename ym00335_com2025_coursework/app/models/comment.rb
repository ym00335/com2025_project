class Comment < ApplicationRecord
  #Sets the associations between comments, posts and users.
  belongs_to :post, dependent: :destroy, optional:true
  belongs_to :user, dependent: :destroy, optional:true
  validates :body, presence: true
end
