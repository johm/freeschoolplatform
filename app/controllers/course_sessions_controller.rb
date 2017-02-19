class CourseSessionsController < ApplicationController
  before_action :set_course_session, only: [:show, :edit, :update, :destroy]

  # GET /course_sessions
  # GET /course_sessions.json
  def index
    @course_sessions = CourseSession.all
  end

  # GET /course_sessions/1
  # GET /course_sessions/1.json
  def show
  end

  # GET /course_sessions/new
  def new
    @course_session = CourseSession.new
  end

  # GET /course_sessions/1/edit
  def edit
  end

  # POST /course_sessions
  # POST /course_sessions.json
  def create
    @course_session = CourseSession.new(course_session_params)

    respond_to do |format|
      if @course_session.save
        format.html { redirect_to @course_session, notice: 'Course session was successfully created.' }
        format.json { render :show, status: :created, location: @course_session }
      else
        format.html { render :new }
        format.json { render json: @course_session.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /course_sessions/1
  # PATCH/PUT /course_sessions/1.json
  def update
    respond_to do |format|
      if @course_session.update(course_session_params)
        format.html { redirect_to @course_session, notice: 'Course session was successfully updated.' }
        format.json { render :show, status: :ok, location: @course_session }
      else
        format.html { render :edit }
        format.json { render json: @course_session.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /course_sessions/1
  # DELETE /course_sessions/1.json
  def destroy
    @course_session.destroy
    respond_to do |format|
      format.html { redirect_to course_sessions_url, notice: 'Course session was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_course_session
      @course_session = CourseSession.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def course_session_params
      params.require(:course_session).permit(:course_id, :start, :end)
    end
end
