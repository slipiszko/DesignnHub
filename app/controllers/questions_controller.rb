class QuestionsController < ApplicationController
  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  private

  def question_params
    params.require(:question).permit(:content, :photo)
  end
end
