class PagesController < ApplicationController
  before_action :set_page, only: [:show, :edit, :update, :destroy]

  # GET /pages
  # GET /pages.json

  def homepage 
    if @site.homepage
      @page=@site.homepage
      render :action => "show"
    else
      redirect_to courses_url
    end
  end

  # GET /pages/1
  # GET /pages/1.json
  def show
    authorize @page
  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_page
      @page = Page.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def page_params
      params.require(:page).permit(:name, :body, :site_id)
    end
end
