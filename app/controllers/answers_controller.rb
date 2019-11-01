class AnswersController < ApplicationController
  before_action :set_answer_user, only: [:create, :upvote, :downvote]
  before_action :find_current_answer, only: [:edit, :update, :destroy, :upvote, :downvote]
  before_action :find_current_question, only: [:create, :edit, :update, :destroy]

  def new
    @answer = Answer.new
  end

  def create
    @answer = Answer.new(answer_params)
    @answer.question = @question
    @answer.user = @user
    authorize @answer
    if @answer.valid?
      @answer.save
      redirect_to question_path(@question)
    else
      render 'new'
    end
  end

  def edit
    authorize @answer
  end

  def update
    authorize @answer
    if @answer.valid?
      respond_to do |format|
        if @answer.update_attributes(answer_params)
          format.html { redirect_to question_path(@answer.question) }
          format.json { head :no_content }
          format.js {}
        else
          format.html { render action: "update" }
          format.json {}
        end
      end
    end
  end

  def destroy
    authorize @answer
    @answer.destroy
    redirect_to question_path(@question)
  end

  def upvote
    authorize @answer
    if @user.upvoted_answer?(@answer)
      return
    else
      if @user.downvoted_answer?(@answer)
        @user.remove_vote_answer(@answer)
        @user.upvote_answer(@answer)
      else
        @user.upvote_answer(@answer)
      end
    end

    redirect_to question_path(@answer.question)
  end

  def downvote
    authorize @answer
    if @user.downvoted_answer?(@answer)
      return
    else
      if @user.upvoted_answer?(@answer)
        @user.remove_vote_answer(@answer)
        @user.downvote_answer(@answer)
      else
        @user.downvote_answer(@answer)
      end
    end

    redirect_to question_path(@answer.question)
  end

  private

  def answer_params
    params.require(:answer).permit(:content, :photo)
  end

  def find_current_question
    @question = Question.find(params[:question_id])
  end

  def find_current_answer
    @answer = Answer.find(params[:id])
  end

  def set_answer_user
    @user = current_user
  end
end
