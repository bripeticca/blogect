class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def show
    @post = Post.find(params[:id])
    @comment = @post.comments.build
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(params.permit(:body, :title))
    if @post.save
      redirect_to post_path(@post) # using prefix requires you to use path - prefixes are simpler way of accessing certain controllers i.e show
    else
      render 'new'
    end
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])
    if @post.update(params.require(:post).permit(:title, :body))
      redirect_to post_path(@post)
    else
      render 'edit'
    end
  end
end
