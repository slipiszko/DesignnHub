class CritiquesController < ApplicationController
  before_action :set_critique_user, only: [:new, :create, :edit, :update]
  before_action :find_critique_portfolio, only: [:new, :create, :edit, :update]
  before_action :find_critique, only: [:new, :create, :edit, :update]

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

  def edit
    authorize @critique
  end

  def update
    authorize @critique
    if @critique.valid?
      respond_to do |format|
        if @critique.update_attributes(critique_params)
          format.html { redirect_to portfolio_path(@critique.design) }
          format.json { head :no_content }
          format.js {}
        else
          format.html { render action: "update" }
          format.json { render json: @critique.errors, status: :unprocessable_entity }
        end
      end
    end
  end

  private

  def critique_params
    params.require(:critique).permit(:content)
  end

  def set_critique_user
    @user = current_user
  end

  def find_critique
    @critique = Critique.find(params[:id])
  end

  def find_critique_portfolio
    @portfolio = Portfolio.find(params[:portfolio_id])
  end
end
