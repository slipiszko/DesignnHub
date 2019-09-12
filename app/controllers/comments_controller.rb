class CommentsController < ApplicationController
  before_action :set_comment_user,    only: [:new, :create, :edit, :update, :upvote, :downvote]
  before_action :set_comment_design,  only: [:new, :create, :edit, :update]
  before_action :set_current_comment, only: [:edit, :update, :upvote, :downvote]

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
    respond_to do |format|
      if @comment.update(comment_params)
        format.html { redirect_to design_path(@design) }
        format.json { head :no_content }
        format.js {}
      else
        format.html { render action: "edit" }
        format.json { render json: @question.errors, status: :unprocessable_entity }
      end
    end
  end

  def upvote
    if @user.upvoted?(@comment)
      return
    else
      if @user.downvote(@comment).present? || @user.upvote(@comment).present?
        @user.remove_vote(@comment)
        @user.upvote(@comment)
      else
        @user.upvote(@comment)
      end
    end

    redirect_to design_path(@comment.design)
  end

  def downvote
    if @user.downvoted?(@comment)
      return
    else
      if @user.upvote(@comment).present? || @user.downvote(@comment).present?
        @user.remove_vote(@comment)
        @user.downvote(@comment)
      else
        @user.downvote(@comment)
      end
    end

    redirect_to design_path(@comment.design)
  end

  private

  def comment_params
    params.require(:comment).permit(:content, :x, :y)
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
