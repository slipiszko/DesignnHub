class ProfilesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @users = policy_scope(User).order(created_at: :desc)
  end

  def show
    @current_user = current_user
    @user = User.find(params[:id])
    @job_experience = JobExperience.new
    authorize @user
  end
end
