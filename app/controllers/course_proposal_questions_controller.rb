class CourseProposalQuestionsController < ApplicationController
  before_action :set_course_proposal_question, only: [:show, :edit, :update, :destroy]

  # GET /course_proposal_questions
  # GET /course_proposal_questions.json
  def index
    @course_proposal_questions = CourseProposalQuestion.all
  end

  # GET /course_proposal_questions/1
  # GET /course_proposal_questions/1.json
  def show
  end

  # GET /course_proposal_questions/new
  def new
    @course_proposal_question = CourseProposalQuestion.new
  end

  # GET /course_proposal_questions/1/edit
  def edit
  end

  # POST /course_proposal_questions
  # POST /course_proposal_questions.json
  def create
    @course_proposal_question = CourseProposalQuestion.new(course_proposal_question_params)

    respond_to do |format|
      if @course_proposal_question.save
        format.html { redirect_to @course_proposal_question, notice: 'Course proposal question was successfully created.' }
        format.json { render :show, status: :created, location: @course_proposal_question }
      else
        format.html { render :new }
        format.json { render json: @course_proposal_question.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /course_proposal_questions/1
  # PATCH/PUT /course_proposal_questions/1.json
  def update
    respond_to do |format|
      if @course_proposal_question.update(course_proposal_question_params)
        format.html { redirect_to @course_proposal_question, notice: 'Course proposal question was successfully updated.' }
        format.json { render :show, status: :ok, location: @course_proposal_question }
      else
        format.html { render :edit }
        format.json { render json: @course_proposal_question.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /course_proposal_questions/1
  # DELETE /course_proposal_questions/1.json
  def destroy
    @course_proposal_question.destroy
    respond_to do |format|
      format.html { redirect_to course_proposal_questions_url, notice: 'Course proposal question was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_course_proposal_question
      @course_proposal_question = CourseProposalQuestion.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def course_proposal_question_params
      params.require(:course_proposal_question).permit(:question, :help_text)
    end
end
