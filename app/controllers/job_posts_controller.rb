class JobPostsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  before_action :find_job_post, only: [:show, :edit, :update, :destroy]

  def index
    if params[:query].present?
      sql_query = "profession ILIKE :query OR location ILIKE :query OR job_type ILIKE :query"
      unfiltered_job_posts = JobPost.where(sql_query, query: "%#{params[:query]}%")
      @job_posts = unfiltered_job_posts.uniq
    elsif params[:search].present?
      sql_query = "title ILIKE :search OR profession ILIKE :search OR job_type ILIKE :search OR location ILIKE :search"
      unfiltered_job_posts = JobPost.where(sql_query, search: "%#{params[:search]}%")
      @job_posts = unfiltered_job_posts.uniq
    else
      @job_posts = policy_scope(JobPost).order(created_at: :desc)
    end
  end

  def show
    authorize @job_post
    @job_application = JobApplication.new
  end

  def new
    @job_post = JobPost.new
  end

  def create
    @job_post = JobPost.new(job_post_params)
    @job_post.user = current_user
    authorize @job_post
    if @job_post.valid?
      @job_post.save
      flash[:notice] = "Your job post has been added"
      redirect_to profile_path(current_user)
    else
      render 'new'
    end
  end

  def edit
  end

  def update
    authorize @job_post
    @job_post.update(job_post_params)
  end

  def destroy
    authorize @job_post
    @job_post.destroy
  end

  private

  def find_job_post
    @job_post = JobPost.find(params[:id])
  end

  def job_post_params
    params.require(:job_post).permit(:photo, :title, :content, :profession, :job_type, :location)
  end
end
