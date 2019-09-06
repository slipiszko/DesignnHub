class JobPostsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  before_action :find_job_post, only: [:show, :edit, :update, :destroy]

  def index
    if params[:query].present?
      sql_query = "profession ILIKE :query OR type ILIKE :query"
      unfiltered_job_posts = JobPost.where(sql_query, query: "%#{params[:query]}%")
      @job_posts = unfiltered_job_posts.uniq
    elsif params[:search].present?
      sql_query = "title ILIKE :search OR profession ILIKE :search OR type ILIKE :search OR location ILIKE :search"
      unfiltered_job_posts = JobPost.where(sql_query, search: "%#{params[:search]}%")
      @job_posts = unfiltered_job_posts.uniq
    else
      @job_posts = JobPost.all
    end
  end

  def show
  end

  def new
    @job_post = JobPost.new
  end

  def create
    @job_post = JobPost.new(job_post_params)
    @job_post.user = current_user
    @job_post.save
  end

  def edit
  end

  def update
    @job_post.update(job_post_params)
  end

  def destroy
    @job_post.destroy
  end

  private

  def find_job_post
    @job_post = JobPost.find(params[:id])
  end

  def job_post_params
    params.require(:job_post).permit(:photo, :title, :content, :category, :city)
  end
end
