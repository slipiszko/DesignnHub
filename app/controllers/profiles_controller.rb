class ProfilesController < ApplicationController
  def show
    @user = current_user
    @job_experience = JobExperience.new
  end
end
