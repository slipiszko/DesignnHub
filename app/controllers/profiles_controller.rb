class ProfilesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:show]

  def show
    @current_user = current_user
    @user = User.find(params[:id])
    @job_experience = JobExperience.new
    authorize @user
  end
end
