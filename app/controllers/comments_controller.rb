class CommentsController < ApplicationController
  def new
    if @current_user
      @comment = Comment.new
    else
      redirect_to sign_up_path, notice: 'You must be logged in to do that!'
    end
  end
  
  def create
    @comment = Comment.new(comment_params)
    if @comment.save
      redirect_to comment_path(@comment.id), notice: 'Comment has been created!'
    else
      redirect_to new_comment_path, notice: 'Comment failed to save'
    end
  end

  def show
  end

  private
  def set_comment
    @comment = Comment.find(params[:id])
  end

  def comment_params
    params.require(:comment).permit(:title, :content, :date, :user_id)
  end
end
