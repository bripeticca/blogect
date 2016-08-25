class CommentsController < ApplicationController
  def create
    post = Post.find(params[:post_id])
    comment = Comment.new(params.require(:comment).permit(:body))
    comment.post = post
    comment.save

    redirect_to post_path(post)
  end
end
