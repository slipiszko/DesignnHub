class JobApplicationsController < ApplicationController
  before_action :find_job_post, only: [:new, :create]

  def new
    @job_application = JobApplication.new
  end

  def create
    @job_application = JobApplication.new(job_application_params)
    @job_application.job_post = @job_post
    @job_application.user = current_user
    @job_application.save
    flash[:notice] = "Your application is submitted"
    redirect_to job_posts_path
  end

  private

  def find_job_post
    @job_post = JobPost.find(params[:job_post_id])
  end

  def job_application_params
    params.require(:job_application).permit(:note)
  end
end
