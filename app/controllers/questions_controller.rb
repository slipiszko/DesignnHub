class QuestionsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  before_action :find_question, only: [:show, :edit, :update, :destroy]

  def index
    if params[:query].present?
      @questions = policy_scope(Question).joins(:question_tags).where(question_tags: { name: params[:query] })
    else
      @questions = policy_scope(Question).order(created_at: :desc)
    end
    @question_tags = QuestionTag.all
    @portfolios = Portfolio.all
  end

  def show
    authorize @question
    @user = @question.user
    @answer = Answer.new
    query = @question.question_tag_ids
    @related_questions = policy_scope(Question).joins(:question_tags).where(question_tags: { id: query })
  end

  def new
    @question = Question.new
    authorize @question
  end

  def create
    @question = Question.new(question_params)
    @question.user = current_user
    authorize @question
    if @question.save
      redirect_to profile_path(current_user)
    else
      render 'new'
    end
  end

  def edit
    authorize @question
  end

  def update
    authorize @question
  end

  def destroy
    authorize @question
    @question.destroy
    redirect_to profile_path(current_user)
  end

  private

  def question_params
    params.require(:question).permit(:content, :photo, question_tags_attributes: [:id, :name])
  end

  def find_question
    @question = Question.find(params[:id])
  end
end
