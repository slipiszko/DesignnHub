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
    params.require(:user).permit(:first_name, :last_name, :city, :bio, :photo, :job)
  end

  def after_sign_in_path_for(resource)
    stored_location_for(resource_or_scope) || super
  end

  def after_sign_up_path_for(resource_or_scope)
    stored_location_for(resource_or_scope) || super
  end

  def after_sign_out_path_for(resource_or_scope)
    stored_location_for(resource_or_scope) || super
  end
end
