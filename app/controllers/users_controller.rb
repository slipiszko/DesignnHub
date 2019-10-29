class UsersController < ApplicationController
  before_action :set_user, only: [:follow, :unfollow]

  def index
    @users = User.where.not(id: current_user.id)
  end

  def follow
    authorize @user
    current_user.follow(@user.id)
    redirect_to profile_path(@user)
  end

  def unfollow
    authorize @user
    current_user.unfollow(@user.id)
    redirect_to profile_path(@user)
  end

  private

  def set_user
    @user = User.find(params[:id])
  end
end
