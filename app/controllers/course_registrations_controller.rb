class CourseRegistrationsController < ApplicationController
  before_action :set_course_registration, only: [:show, :edit, :update, :destroy]

  # GET /course_registrations
  # GET /course_registrations.json

  # POST /course_registrations
  # POST /course_registrations.json
  def create
    @course_registration = CourseRegistration.new(course_registration_params)
    @course_registration.user=current_user
    session[:destination] = "/courses/#{@course_registration.course.id}"
    authorize @course_registration

    respond_to do |format|
      if @course_registration.save
        format.html { redirect_to @course_registration.course, notice: 'You successfully registered for this course.' }
        format.json { render :show, status: :created, location: @course_registration }
      else
        format.html { redirect_to @course_registration.course, warning: 'Problem registering for this course.' }
        format.json { render json: @course_registration.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /course_registrations/1
  # PATCH/PUT /course_registrations/1.json
  # DELETE /course_registrations/1
  # DELETE /course_registrations/1.json
  def destroy
    authorize @course_registration
    course=@course_registration.course
    @course_registration.destroy
    respond_to do |format|
      format.html { redirect_to course, notice: 'You successfully cancelled your registration.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_course_registration
      @course_registration = CourseRegistration.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def course_registration_params
      params.require(:course_registration).permit(:course_id, :user_id)
    end

    def user_not_authorized
      if session[:destination]
        flash[:alert] = "You need to create an account or sign in to register for a course." 
        redirect_to("/users/sign_in");
      else
        flash[:alert] = "You don't have permission to do this."
        redirect_to(root_path);
      end
    end


end
