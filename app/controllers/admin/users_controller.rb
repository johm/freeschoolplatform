module Admin
  class UsersController < Admin::ApplicationController

    def index
      super
       @resources = User.where(:site => @site).order(:created_at, :desc)
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

    # To customize the behavior of this controller,
    # simply overwrite any of the RESTful actions. For example:
    #
    # def index
    #   super
    #   @resources = User.all.paginate(10, params[:page])
    # end

    # Define a custom finder by overriding the `find_resource` method:
    # def find_resource(param)
    #   User.find_by!(slug: param)
    # end

    # See https://administrate-docs.herokuapp.com/customizing_controller_actions
    # for more information
  end
end
