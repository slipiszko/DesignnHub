require "pry-byebug"

class AnswersController < ApplicationController
  before_action :set_answer_user,    only: [:create, :upvote, :downvote]
  before_action :set_current_answer, only: [:upvote, :downvote]
  before_action :set_current_question, only: [:create]

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
    binding.pry
      render 'new'
    end
  end

  def upvote
    authorize @answer
    if @user.upvoted_answer?(@answer)
      return
    else
      if @user.downvote_answer(@answer).present? || @user.upvote_answer(@answer).present?
        @user.remove_vote_answer(@answer)
        @user.upvote_answer(@answer)
      else
        @user.upvote_answer(@answer)
      end
    end

    redirect_to design_path(@answer.design)
  end

  def downvote
    authorize @answer
    if @user.downvoted_answer?(@answer)
      return
    else
      if @user.upvote_answer(@answer).present? || @user.downvote_answer(@answer).present?
        @user.remove_vote_answer(@answer)
        @user.downvote_answer(@answer)
      else
        @user.downvote_answer(@answer)
      end
    end

    redirect_to design_path(@answer.design)
  end

  private

  def answer_params
    params.require(:answer).permit(:content, :photo)
  end

  def set_current_question
    @question = Question.find(params[:question_id])
  end

  def set_current_answer
    @answer = Answer.find(params[:id])
  end

  def set_answer_user
    @user = current_user
  end
end
