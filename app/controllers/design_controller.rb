class DesignController < ApplicationController
  def index
    @designs = Design.all
  end

  def show
    @design = Design.find(params[:id])
  end

  def edit
    @design = Design.find(params[:id])
  end

  def new
    @design = Design.new
  end

  def create
    @design = Design.new(design_params)
    @design.user = current_user
    if @design.save
      redirect_to designs_path
    else
      render :new
    end
  end

  def update
    @design.update(design_params)
  end

  def destroy
    @design.destroy
  end

  private

  def design_params
    params.require(:design).permit(:photo, :title, :description, :category)
  end
end
