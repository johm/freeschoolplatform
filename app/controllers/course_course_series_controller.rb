class CourseCourseSeriesController < ApplicationController
  before_action :set_course_course_series, only: [:show, :edit, :update, :destroy]

  # GET /course_course_series
  # GET /course_course_series.json
  def index
    @course_course_series = CourseCourseSeries.all
  end

  # GET /course_course_series/1
  # GET /course_course_series/1.json
  def show
  end

  # GET /course_course_series/new
  def new
    @course_course_series = CourseCourseSeries.new
  end

  # GET /course_course_series/1/edit
  def edit
  end

  # POST /course_course_series
  # POST /course_course_series.json
  def create
    @course_course_series = CourseCourseSeries.new(course_course_series_params)

    respond_to do |format|
      if @course_course_series.save
        format.html { redirect_to @course_course_series, notice: 'Course course series was successfully created.' }
        format.json { render :show, status: :created, location: @course_course_series }
      else
        format.html { render :new }
        format.json { render json: @course_course_series.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /course_course_series/1
  # PATCH/PUT /course_course_series/1.json
  def update
    respond_to do |format|
      if @course_course_series.update(course_course_series_params)
        format.html { redirect_to @course_course_series, notice: 'Course course series was successfully updated.' }
        format.json { render :show, status: :ok, location: @course_course_series }
      else
        format.html { render :edit }
        format.json { render json: @course_course_series.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /course_course_series/1
  # DELETE /course_course_series/1.json
  def destroy
    @course_course_series.destroy
    respond_to do |format|
      format.html { redirect_to course_course_series_index_url, notice: 'Course course series was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_course_course_series
      @course_course_series = CourseCourseSeries.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def course_course_series_params
      params.require(:course_course_series).permit(:course_id, :course_series_id)
    end
end
