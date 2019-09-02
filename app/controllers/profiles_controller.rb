class ProfilesController < ApplicationController
  def edit
    @user = current_user
  end

  def update
    @user = current_user
    if @user.update_attributes(profile_params)
      redirect_to profile_path(current_user)
    else
      render 'pages#home'
    end
  end

  private

  def profile_params
    params.require(:profiles).permit(:first_name, :last_name, :job, :bio, :city, :photo)
  end
end
