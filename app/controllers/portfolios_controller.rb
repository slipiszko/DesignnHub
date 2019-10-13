class PortfoliosController < ApplicationController
  def index
    @portfolios = Portfolio.all
  end

  def show
    @portfolio = Portfolio.find(params[:id])
  end

  def new
    @portfolio = Portfolio.new
  end

  def create
    @portfolio = Portfolio.new(portfolio_params)
  end

  def edit
  end

  def update
  end

  def destroy
    @portfolio = Portfolio.find(params[:id])
    @portfolio.destroy
  end

  private

  def portfolio_params
    params.require(:portfolio).permit(:description, :design_id)
  end
end
