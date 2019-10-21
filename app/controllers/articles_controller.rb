class ArticlesController < ApplicationController
  def index
  end

  def show
  end

  private

  def article_params
    params.require(:article).permit(:title, :content, :photo)
  end
end
