class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authenticate_user!
  before_action :set_new_design
  def set_design
    @new_design = Design.new
  end
end
