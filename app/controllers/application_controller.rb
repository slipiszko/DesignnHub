class ApplicationController < ActionController::Base
  before_action :store_user_location!, if: :storable_location?
  protect_from_forgery with: :exception

  before_action :authenticate_user!
  include Pundit

  before_action :set_design
  before_action :set_job_post
  before_action :set_job_experience
  before_action :set_question
  before_action :set_portfolio

  after_action :verify_authorized, except: :index, unless: :skip_pundit?
  after_action :verify_policy_scoped, only: :index, unless: :skip_pundit?

  def set_design
    @new_design = Design.new
  end

  def set_job_post
    @new_job_post = JobPost.new
  end

  def set_job_experience
    @new_job_experience = JobExperience.new
  end

  def set_question
    @new_question = Question.new
  end

  def set_portfolio
    @portfolio = Portfolio.new
  end

  def default_url_options
    { host: ENV["DOMAIN"] || "localhost:3000" }
  end

  private

  def storable_location?
    request.get? && is_navigational_format? && !devise_controller? && !request.xhr?
  end

  def store_user_location!
    store_location_for(:user, request.fullpath)
  end

  def skip_pundit?
    devise_controller? || params[:controller] =~ /(^(rails_)?admin)|(^pages$)/
  end
end
