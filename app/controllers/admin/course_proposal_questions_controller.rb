module Admin
  class CourseProposalQuestionsController < Admin::ApplicationController
    # To customize the behavior of this controller,
    # simply overwrite any of the RESTful actions. For example:
    #
    def index
       super
       @resources = CourseProposalQuestion.where(:site => @site).order(:created_at, :desc)
    end

    def create 
      resource = resource_class.new(resource_params)
      resource.site=@site
        
      if resource.save
        redirect_to(
          [namespace, resource],
          notice: translate_with_resource("create.success"),
                    )
      else
        render :new, locals: {
          page: Administrate::Page::Form.new(dashboard, resource),
        }
      end

    end

    

    # Define a custom finder by overriding the `find_resource` method:
    # def find_resource(param)
    #   CourseProposalQuestion.find_by!(slug: param)
    # end

    # See https://administrate-docs.herokuapp.com/customizing_controller_actions
    # for more information
  end
end
