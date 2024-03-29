class CommentsController < ApplicationController
  before_action :set_comment_user, only: [:new, :create, :edit, :update, :upvote, :downvote]
  before_action :find_comment_design, only: [:new, :create, :edit, :update]
  before_action :find_current_comment, only: [:edit, :update, :destroy, :upvote, :downvote]

  def new
    @comment = Comment.new
  end

  def create
    @comment = Comment.new(comment_params)
    @comment.user = @user
    @comment.design = @design
    authorize @comment
    if @comment.save
      redirect_to design_path(@design)
    else
      render 'designs/show'
    end
  end

  def edit
    authorize @comment
  end

  def update
    authorize @comment
    if @comment.valid?
      respond_to do |format|
        if @comment.update_attributes(comment_params)
          format.html { redirect_to design_path(@comment.design) }
          format.json { head :no_content }
          format.js {}
        else
          format.html { render action: "update" }
          format.json { render json: @comment.errors, status: :unprocessable_entity }
        end
      end
    end
  end

  def upvote
    authorize @comment
    if @user.upvoted_comment?(@comment)
      return
    elsif @user.downvoted_comment?(@comment)
      @user.remove_vote_comment(@comment)
      @user.upvote_comment(@comment)
    else
      @user.upvote_comment(@comment)
    end

    redirect_to design_path(@comment.design)
  end

  def downvote
    authorize @comment
    if @user.downvoted_comment?(@comment)
      return
    elsif @user.upvoted_comment?(@comment)
      @user.remove_vote_comment(@comment)
      @user.downvote_comment(@comment)
    else
      @user.downvote_comment(@comment)
    end

    redirect_to design_path(@comment.design)
  end

  def destroy
    authorize @comment
    @comment.destroy
    redirect_to design_path(@comment.design)
  end

  private

  def comment_params
    params.require(:comment).permit(:content, :x, :y)
  end

  def find_current_comment
    @comment = Comment.find(params[:id])
  end

  def set_comment_user
    @user = current_user
  end

  def find_comment_design
    @design = Design.find(params[:design_id])
  end
end
