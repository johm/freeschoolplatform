class CourseSeriesController < ApplicationController
  before_action :set_course_series, only: [:show, :edit, :update, :destroy]

  # GET /course_series
  # GET /course_series.json
  def index
    @course_series = CourseSeries.all
  end

  # GET /course_series/1
  # GET /course_series/1.json
  def show
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_course_series
      @course_series = CourseSeries.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def course_series_params
      params.require(:course_series).permit(:name, :description, :site_id, :is_open)
    end
end
