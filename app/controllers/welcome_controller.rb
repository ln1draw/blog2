class WelcomeController < ApplicationController
  def index
    @posts = Post.all
    unless params[:page]
      params[:page] = 1
    end
  end
end
