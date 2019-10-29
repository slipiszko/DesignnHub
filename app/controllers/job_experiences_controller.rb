class JobExperiencesController < ApplicationController
  before_action :set_current_user, only: [:new, :create]
  before_action :find_job_experince, only: [:edit, :update, :destroy]

  def new
    @job_experience = JobExperience.new
  end

  def create
    @job_experience = JobExperience.new(job_experience_params)
    @job_experience.user = @user
    authorize @job_experience
    @job_experience.save
    redirect_to profile_path(@user)
  end

  def edit
    authorize @job_experience
  end

  def update
    authorize @job_experience
    @job_experience.update(job_experience_params)
    redirect_to profile_path(current_user)
  end

  def destroy
    authorize @job_experience
    @job_experience.destroy
    redirect_to profile_path(current_user)
  end

  private

  def job_experience_params
    params.require(:job_experience).permit(:title, :description, :location, :start_date, :end_date)
  end

  def set_current_user
    @user = current_user
  end

  def find_job_experince
    @job_experience = JobExperience.find(params[:id])
  end
end
