class CourseProposalsController < ApplicationController
  before_action :set_course_proposal, only: [:show, :edit, :update, :destroy]


  # GET /course_proposals
  # GET /course_proposals.json
  def index
    authorize CourseProposal
    @course_proposals = CourseProposal.all
  end

  # GET /course_proposals/1
  # GET /course_proposals/1.json
  def show
    authorize @course_proposal
  end

  # GET /course_proposals/new
  def new
    session[:destination] = "new_course_proposal"
    @course_proposal = CourseProposal.new
    authorize @course_proposal
    session[:destination] = nil
  end

  # GET /course_proposals/1/edit
  def edit
    authorize @course_proposal
  end

  # POST /course_proposals
  # POST /course_proposals.json
  def create
    @course_proposal = CourseProposal.new(course_proposal_params)
    @course_proposal.site=@site
    @course_proposal.user=current_user
    authorize @course_proposal

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
    authorize @course_proposal
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
    authorize @course_proposal
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
      params.require(:course_proposal).permit(:title,:description,:background,:scheduling)
    end
      private

    def user_not_authorized
      if session[:destination]
        flash[:alert] = "You are not authorized to perform this action." 
        redirect_to("/users/sign_in");
      else
        flash[:alert] = "You don't have permission to edit or view course proposals."
        redirect_to(root_path);
      end
    end


end
