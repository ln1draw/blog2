class PostsController < ApplicationController
  before_action :set_post, only: [:show]

  def index
    @posts = Post.all
    @sorted = Post.sort
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      redirect_to post_path(@post.id), notice: 'Post has been created!'
    else
      redirect_to new_post_path, notice: 'Post failed to save'
    end
  end

  def show
    @comments = Comment.where(post_id: @post.id)
  end

  private
  def set_post
    @post = Post.find(params[:id])
  end

  def post_params
    params.require(:post).permit(:title, :content, :date, :id, :user_id)
  end
end