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

  # GET /course_series/new
  def new
    @course_series = CourseSeries.new
  end

  # GET /course_series/1/edit
  def edit
  end

  # POST /course_series
  # POST /course_series.json
  def create
    @course_series = CourseSeries.new(course_series_params)

    respond_to do |format|
      if @course_series.save
        format.html { redirect_to @course_series, notice: 'Course series was successfully created.' }
        format.json { render :show, status: :created, location: @course_series }
      else
        format.html { render :new }
        format.json { render json: @course_series.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /course_series/1
  # PATCH/PUT /course_series/1.json
  def update
    respond_to do |format|
      if @course_series.update(course_series_params)
        format.html { redirect_to @course_series, notice: 'Course series was successfully updated.' }
        format.json { render :show, status: :ok, location: @course_series }
      else
        format.html { render :edit }
        format.json { render json: @course_series.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /course_series/1
  # DELETE /course_series/1.json
  def destroy
    @course_series.destroy
    respond_to do |format|
      format.html { redirect_to course_series_index_url, notice: 'Course series was successfully destroyed.' }
      format.json { head :no_content }
    end
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
