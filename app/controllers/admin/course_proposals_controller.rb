module Admin
  class CourseProposalsController < Admin::ApplicationController
    # To customize the behavior of this controller,
    # simply overwrite any of the RESTful actions. For example:
    #
    def index
       super
       @resources = CourseProposal.where(:site => @site).order(:created_at, :desc)
    end

    def show
      authorize requested_resource
      super
    end
        
    
    def update 
      authorize requested_resource
      super
    end

    def edit 
      authorize requested_resource
      super
    end

    def destroy 
      authorize requested_resource
      super
    end


    def reject 
      authorize requested_resource
      requested_resource.course_proposal_statuses << CourseProposalStatus.new(:user=>current_user,:proposal_status=>"Rejected")
      redirect_to admin_course_proposal_path(requested_resource)
    end

    def defer 
      authorize requested_resource
      requested_resource.course_proposal_statuses << CourseProposalStatus.new(:user=>current_user,:proposal_status=>"More Info Needed")
      redirect_to admin_course_proposal_path(requested_resource)
    end

    def approve 
      authorize requested_resource
      requested_resource.course_proposal_statuses << CourseProposalStatus.new(:user=>current_user,:proposal_status=>"Approve")
      course=Course.new(:homesite => requested_resource.site,
                        :instructor => requested_resource.user, 
                        :name => requested_resource.title, 
                        :full_description=> {:data =>[{:type=>"text",:data=>{:format=>"html",:text => requested_resource.description}}]}.to_json)
      course.save!
      redirect_to edit_admin_course_path(course)
    end



    # Define a custom finder by overriding the `find_resource` method:
    # def find_resource(param)
    #   CourseProposal.find_by!(slug: param)
    # end

    # See https://administrate-docs.herokuapp.com/customizing_controller_actions
    # for more information
  end
end
