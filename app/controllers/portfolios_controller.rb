class PortfoliosController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @portfolios = policy_scope(Portfolio).order(created_at: :desc)
  end

  def show
    @portfolio = Portfolio.find(params[:id])
    authorize @portfolio
  end

  def new
    @portfolio = Portfolio.new
  end

  def create
    @portfolio = Portfolio.new(portfolio_params)
    authorize @portfolio
    @portfolio.save
  end

  def edit
  end

  def update
  end

  def destroy
    @portfolio = Portfolio.find(params[:id])
    authorize @portfolio
    @portfolio.destroy
  end

  private

  def portfolio_params
    params.require(:portfolio).permit(:description, :design_id)
  end
end
