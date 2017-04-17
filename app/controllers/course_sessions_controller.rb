class CourseSessionsController < ApplicationController
  before_action :set_course_session, only: [:show, :edit, :update, :destroy]

  # GET /course_sessions
  # GET /course_sessions.json
  def index
    @course_sessions = CourseSession.all
    respond_to do |format|
      format.html { redirect_to courses_url}
    end
  end

  # GET /course_sessions/1
  # GET /course_sessions/1.json
  def show
    authorize @course_session
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
