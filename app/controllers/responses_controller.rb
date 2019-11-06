class ResponsesController < ApplicationController
  before_action :find_response
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
    authorize @response
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
    @answer = Answer.find(params[:answer_id])
  end

  def find_current_comment
    @comment = Comment.find(params[:comment_id])
  end

  def find_current_critiqiue
    @critiqiue = Critiqiue.find(params[:critique_id])
  end

  def find_current_design
    @design = Design.find(params[:design_id])
  end

  def find_current_portfolio
    @portfolio = Portfolio.find(params[:portfolio_id])
  end

  def find_current_question
    @question = Question.find(params[:question_id])
  end
end
