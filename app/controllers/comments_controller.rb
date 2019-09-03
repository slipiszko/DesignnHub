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
    if @comment.save
      redirect_to design_path(@design)
    else
      render 'designs/show'
    end
  end

  def edit
  end

  def update
    @comment.update(comment_params)
  end

  private

  def comment_params
    params.require(:comment).permit(:content)
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
