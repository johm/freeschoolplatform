class ApplicationController < ActionController::Base
  include Pundit
  protect_from_forgery with: :exception
  before_filter :set_site
  rescue_from Pundit::NotAuthorizedError, with: :user_not_authorized
  before_action :configure_permitted_parameters, if: :devise_controller?


  def after_sign_in_path_for(resource)
    if session[:destination] == "new_course_proposal"
      "/course_proposals/new"
    else
      stored_location_for(resource) || root_path
    end
  end  

  def set_site 
    domain = request.env["HTTP_HOST"]
    begin 
      @site=Site.find_by! :domain=>domain 
    rescue
      @site=Site.first
    end
  end

  protected
  
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
    devise_parameter_sanitizer.permit(:account_update, keys: [:name])
  end
  
  private

  def user_not_authorized
    flash[:alert] = "You are not authorized to perform this action."
    redirect_to(request.referrer || root_path)
  end

end
