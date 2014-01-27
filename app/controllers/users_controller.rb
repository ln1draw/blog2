class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to root_url, :notice => "Signed up!"
    else
      render "new"
    end
  end

  def show
    @user = User.find(params[:id])
    @posts = Post.where(user_id: @user.id)
    @comments = Comment.where(user_id: @user.id)
  end

  private
  def user_params
    params.require(:user).permit(:email, :username, :password, :password_confirmation, :user_id)
  end
end
