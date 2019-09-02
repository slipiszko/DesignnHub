class RegistrationsController < Devise::RegistrationsController
  def edit
    @user = current_user
  end

  def update
    @user = current_user
    @user.update(account_update_params)
    redirect_to profile_path(@user)
  end

  protected

  def sign_up_params
    params.require(:user).permit(:first_name, :last_name, :email, :password, :password_confirmation)
  end

  def account_update_params
    params.require(:user).permit(:first_name, :last_name, :city, :bio, :photo)
  end

  def after_sign_up_path_for(resource)
    profile_path(current_user)
  end
end
