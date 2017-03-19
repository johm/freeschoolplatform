class CourseProposalsController < ApplicationController
  before_action :set_course_proposal, only: [:show, :edit, :update, :destroy]

  # GET /course_proposals
  # GET /course_proposals.json
  def index
    @course_proposals = CourseProposal.all
  end

  # GET /course_proposals/1
  # GET /course_proposals/1.json
  def show
  end

  # GET /course_proposals/new
  def new
    @course_proposal = CourseProposal.new
  end

  # GET /course_proposals/1/edit
  def edit
  end

  # POST /course_proposals
  # POST /course_proposals.json
  def create
    @course_proposal = CourseProposal.new(course_proposal_params)

    respond_to do |format|
      if @course_proposal.save
        format.html { redirect_to @course_proposal, notice: 'Course proposal was successfully created.' }
        format.json { render :show, status: :created, location: @course_proposal }
      else
        format.html { render :new }
        format.json { render json: @course_proposal.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /course_proposals/1
  # PATCH/PUT /course_proposals/1.json
  def update
    respond_to do |format|
      if @course_proposal.update(course_proposal_params)
        format.html { redirect_to @course_proposal, notice: 'Course proposal was successfully updated.' }
        format.json { render :show, status: :ok, location: @course_proposal }
      else
        format.html { render :edit }
        format.json { render json: @course_proposal.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /course_proposals/1
  # DELETE /course_proposals/1.json
  def destroy
    @course_proposal.destroy
    respond_to do |format|
      format.html { redirect_to course_proposals_url, notice: 'Course proposal was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_course_proposal
      @course_proposal = CourseProposal.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def course_proposal_params
      params.require(:course_proposal).permit(:email, :proposed_by, :site_id)
    end
end