class Comment < ActiveRecord::Base
  belongs_to :post # so you can find the parent post for a comment
end
