class JobPostsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  before_action :find_job_post, only: [:show, :edit, :update, :destroy]

  def index
    @job_posts = JobPost.all
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
