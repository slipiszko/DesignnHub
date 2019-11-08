class DesignsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  before_action :find_design, only: [:show, :edit, :update, :destroy]

  def index
    if params[:query].present?
      sql_query = "category ILIKE :query OR name ILIKE :query"
      unfiltered_designs = Design.joins(:design_tags).where(sql_query, query: "%#{params[:query]}%")
      @designs = unfiltered_designs.uniq
    elsif params[:search].present?
      sql_query = "category ILIKE :search OR title ILIKE :search OR name ILIKE :search OR description ILIKE :search"
      unfiltered_designs = Design.joins(:design_tags).where(sql_query, search: "%#{params[:search]}%")
      @designs = unfiltered_designs.uniq
    else
      @designs = policy_scope(Design).order(created_at: :desc)
    end
  end

  def show
    authorize @design
    @design = Design.find(params[:id])
    @user = @design.user
    @comments = @design.comments
    @comment = Comment.new
  end

  def new
    @design = Design.new
    authorize @design
    @user = current_user
  end

  def create
    @design = Design.new(design_params)
    @design.user = current_user
    if params["design"]["design_design_tag"].present?
      @design.design_tags = DesignTag.where(id: params["design"]["design_design_tag"]["name"])
    else
      design_tags = params["design"]["design_tag_ids"].reject(&:empty?)
      design_tags.each do |tag|
        @design.design_tags << DesignTag.where(id: tag)
      end
    end
    authorize @design
    if @design.save
      flash[:notice] = "Your design has been added"
      redirect_to profile_path(current_user)
    else
      render :new
    end
  end

  def edit
    authorize @design
  end

  def update
    authorize @design
    @design.update(design_params)
  end

  def destroy
    authorize @design
    @design.destroy
    redirect_to profile_path(current_user)
  end

  private

  def find_design
    @design = Design.find(params[:id])
  end

  def design_params
    params.require(:design).permit(:photo, :title, :description, :category)
  end
end
