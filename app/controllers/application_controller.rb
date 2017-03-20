class ApplicationController < ActionController::Base
  include Pundit
  protect_from_forgery with: :exception
  before_filter :set_site


  def set_site 
    domain = request.env["HTTP_HOST"]
    begin 
      @site=Site.find_by! :domain=>domain 
    rescue
      @site=Site.first
    end
  end
end
