class ResponsesController < ApplicationController
  before_action :find_current_answer, only: [:edit, :update]
  before_action :find_current_comment, only: [:edit, :update]
  before_action :find_current_critiqiue, only: [:edit, :update]

  def new
    @response = Response.new
  end

  def create
    @response = Response.new(response_params)
  end

  def edit
  end

  def update
  end

  private

  def response_params
    params.require(:response).permit(:content)
  end

  def find_current_answer
    @answer = Answer.find(params[:id])
  end

  def find_current_comment
    @comment = Comment.find(params[:id])
  end

  def find_current_critiqiue
    @critiqiue = Critiqiue.find(params[:id])
  end
end
