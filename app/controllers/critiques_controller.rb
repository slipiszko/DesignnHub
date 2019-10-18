class CritiquesController < ApplicationController
  before_action :set_critique_user,    only: [:new, :create, :edit, :update]
  before_action :set_critique_portfolio,  only: [:new, :create, :edit, :update]

  def new
    @critique = Critique.new
  end

  def create
    @critique = Critique.new(critique_params)
    @critique.user = @user
    @critique.portfolio = @portfolio
    authorize @critique
    if @critique.save
      redirect_to portfolio_path(@portfolio)
    else
      render 'new'
    end
  end

  private

  def critique_params
    params.require(:critique).permit(:content)
  end

  def set_critique_user
    @user = current_user
  end

  def set_critique_portfolio
    @portfolio = Portfolio.find(params[:portfolio_id])
  end
end
