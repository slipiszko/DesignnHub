class QuestionsController < ApplicationController
  def new
  end

  def create
    authorize @question
  end

  def edit
    authorize @question
  end

  def update
    authorize @question
  end

  private

  def question_params
    params.require(:question).permit(:content, :photo)
  end
end
