class ApplicationController < ActionController::Base
  before_action :store_user_location!, if: :storable_location?
  protect_from_forgery with: :exception
  before_action :authenticate_user!
  before_action :set_design

  def set_design
    @new_design = Design.new
  end

  private

  def storable_location?
    request.get? && is_navigational_format? && !devise_controller? && !request.xhr?
  end

  def store_user_location!
    store_location_for(:user, request.fullpath)
  end
end
