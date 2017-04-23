# -*- coding: utf-8 -*-
class CourseIdeasController < ApplicationController



  # GET /course_proposals/new
  def new
    @course_idea = CourseIdea.new
  end


  # POST /course_proposals
  # POST /course_proposals.json
  def create
    @course_idea = CourseIdea.new(course_idea_params)
    @course_idea.site=@site

    respond_to do |format|
      if @course_idea.save

        @site.admins.each do |admin| 
          CourseIdeaMailer.send_idea_email(@course_idea,@site,admin).deliver_now
        end

        format.html { redirect_to "/", notice: 'Course idea was successfully submitted—thank you!' }
        format.json { render :show, status: :created, location: @course_idea }
      else
        format.html { render :new }
        format.json { render json: @course_idea.errors, status: :unprocessable_entity }
      end
    end
  end


  private
    # Use callbacks to share common setup or constraints between actions.


    # Never trust parameters from the scary internet, only allow the white list through.
    def course_idea_params
      params.require(:course_idea).permit(:name,:email,:what,:format_of_idea)
    end

end
