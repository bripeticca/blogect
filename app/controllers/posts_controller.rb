class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def show
    @post = Post.find(params[:id])
  end

  def new
  end

  def create
    @post = Post.new(params.permit(:body, :title))
    if @post.save
      redirect_to "/show_post/#{post.id}"
    else
      render 'new'
    end
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])
    if @post.update(params.permit(:body, :title))
      redirect_to "/show_post/#{@post.id}"
    else
      render 'edit'
    end
  end
end
