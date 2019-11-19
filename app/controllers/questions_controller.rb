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
    @questions = policy_scope(Question).order(created_at: :desc)
    query = @question.question_tag_ids
    all_related_questions = policy_scope(Question).joins(:question_tags).where(question_tags: { id: query })
    if all_related_questions.count == 1
      @related_questions = []
    else
      @related_questions = all_related_questions.delete_if { |x| x == @question }
    end
  end

  def new
    @question = Question.new
    authorize @question
    @portfolio = Portfolio.new
  end

  def create
    @question = Question.new(question_params)
    @question.user = current_user
    if params["question"]["question_question_tags"].present?
      @question.question_tags = QuestionTag.where(id: params["question"]["question_question_tags"]["name"])
    else
      question_tags = params["question"]["question_tag_ids"].reject(&:empty?)
      question_tags.each do |tag|
        @question.question_tags << QuestionTag.where(id: tag)
      end
    end
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
    params.require(:question).permit(:content, :photo)
  end

  def find_question
    @question = Question.find(params[:id])
  end
end
