class ResponsesController < ApplicationController
  before_action :find_response, only: [:edit, :update, :destroy]
  before_action :find_current_answer, only: [:new, :create, :edit, :update]
  before_action :find_current_comment, only: [:new, :create, :edit, :update]
  before_action :find_current_critiqiue, only: [:new, :create, :edit, :update]
  before_action :find_current_design, only: [:new, :create, :edit, :update, :destroy]
  before_action :find_current_portfolio, only: [:new, :create, :edit, :update, :destroy]
  before_action :find_current_question, only: [:new, :create, :edit, :update, :destroy]

  def new
    @response = Response.new
  end

  def create
    @response = Response.new(response_params)
    @response.user = current_user

    if @answer.present?
      @response.answer = @answer
    elsif @comment.present?
      @response.comment = @comment
    else
      @response.critique = @critique
    end

    authorize @response
    @response.save

    if @design.present?
      redirect_to design_path(@design)
    elsif @portfolio.present?
      redirect_to portfolio_path(@portfolio)
    else
      redirect_to question_path(@question)
    end
  end

  def edit
    authorize @response
  end

  def update
    authorize @response
  end

  def destroy
    authorize @response
  end

  private

  def response_params
    params.require(:response).permit(:content)
  end

  def find_response
    @response = Response.find(params[:id])
  end

  def find_current_answer
    if params[:answer_id].present?
      @answer = Answer.find(params[:answer_id])
    else
    end
  end

  def find_current_comment
    if params[:comment_id].present?
      @comment = Comment.find(params[:comment_id])
    else
    end
  end

  def find_current_critiqiue
    if params[:critique_id].present?
      @critiqiue = Critiqiue.find(params[:critique_id])
    else
    end
  end

  def find_current_design
    if params[:design_id].present?
      @design = Design.find(params[:design_id])
    else
    end
  end

  def find_current_portfolio
    if params[:portfolio_id]
      @portfolio = Portfolio.find(params[:portfolio_id])
    else
    end
  end

  def find_current_question
    if params[:question_id].present?
      @question = Question.find(params[:question_id])
    else
    end
  end
end
