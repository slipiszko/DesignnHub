class ProfilesController < ApplicationController
  def show
    @current_user = current_user
    @user = User.find(params[:id])
    @job_experience = JobExperience.new
  end
end
