class CourseCollectionsController < ApplicationController
  before_action :set_course_collection, only: [:show, :edit, :update, :destroy]

  # GET /course_collection
  # GET /course_collection.json
  def index
    @course_collection = CourseCollection.all
  end

  # GET /course_collection/1
  # GET /course_collection/1.json
  def show
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_course_collection
      @course_collection = CourseCollection.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def course_collection_params
      params.require(:course_collection).permit(:name, :description, :site_id, :is_open)
    end
end
