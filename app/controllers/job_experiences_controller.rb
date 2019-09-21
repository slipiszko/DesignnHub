class JobExperiencesController < ApplicationController
  before_action :find_current_user, only: [:new, :create]
  def new
    @job_experience = JobExperience.new
  end

  def create
    @job_experience = JobExperience.new(job_experience_params)
    @job_experience.user = @user
    authorize @job_experience
    @job_experience.save
  end

  def edit
  end

  def update
    authorize @job_experience
  end

  def destroy
    authorize @job_experience
  end

  private

  def find_current_user
    @user = current_user
  end

  def job_experience_params
    params.require(:job_experiences).permit(:title, :description, :location, :start_date, :end_date)
  end
end
