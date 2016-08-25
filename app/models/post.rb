class Post < ActiveRecord::Base
  validates :title, presence: true
  validates :body, presence: true

  has_many :comments # allows rails to do post.comments
end
