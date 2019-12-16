class Post < ApplicationRecord
  #Sets the associations between users and comments. Also checks if the title of the post is unique
  belongs_to :user, optional: true
  has_many :comments
  mount_uploader :image, ImageUploader
  validates :title, presence: true

end
