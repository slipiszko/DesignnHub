class DesignsController < ApplicationController
  def index
    @designs = Design.all
  end

  def show
    @design = Design.find(params[:id])
    @user = @design.user
    @comments = @design.comments
    @comment = Comment.new
  end

  def edit
    @design = Design.find(params[:id])
  end

  def new
    @design = Design.new
    @user = current_user
  end

  def create
    @design = Design.new(design_params)
    @design.user = current_user
    if @design.save
      redirect_to profile_path(current_user)
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
