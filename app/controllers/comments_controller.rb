class CommentsController < ApplicationController
  before_action :set_comment_user,    only: [:new, :create, :edit, :update]
  before_action :set_comment_design,  only: [:new, :create, :edit, :update]
  before_action :set_current_comment, only: [:edit, :update]

  def new
    @comment = Comment.new
  end

  def create
    @comment = Comment.new(comment_params)
    @comment.user = @user
    @comment.design = @design
  end

  def edit
  end

  def update
  end

  private

  def comment_params
    params.permit(:comment).permit(:content)
  end

  def set_current_comment
    @comment = Comment.find(params[:id])
  end

  def set_comment_user
    @user = current_user
  end

  def set_comment_design
    @design = Design.find(params[:design_id])
  end
end
