# All Administrate controllers inherit from this `Admin::ApplicationController`,
# making it the ideal place to put authentication logic or other
# before_actions.
#
# If you want to add pagination or other controller-level concerns,
# you're free to overwrite the RESTful controller actions.
module Admin
  class ApplicationController < Administrate::ApplicationController
    include Pundit
    protect_from_forgery with: :exception
    before_action :authenticate_admin
    before_filter :set_site
    rescue_from Pundit::NotAuthorizedError, with: :user_not_authorized

    def authenticate_admin
      redirect_to '/users/sign_in', alert: 'Not authorized.' unless current_user &&  current_user.role == "admin"
    end

    def set_site 
      domain = request.env["HTTP_HOST"]
      begin 
        @site=Site.find_by! :domain=>domain 
      rescue
        @site=Site.first
      end
    end

    #fixes pundit bug https://github.com/thoughtbot/administrate/pull/465/files
    def resource_params
      params.require(resource_name).permit(dashboard.permitted_attributes)
    end

    # Override this value to specify the number of elements to display at a time
    # on index pages. Defaults to 20.
    # def records_per_page
    #   params[:per_page] || 20
    # end

  
  def user_not_authorized
    flash[:alert] = "You are not authorized to perform this action."
    redirect_to(request.referrer || root_path)
  end

  end
end
