class CourseIdeaPolicy < ApplicationPolicy
  def create?
    context.user.present?
  end

  def new?
    create?
  end

  def edit?
    (context.user.admin?  && context.user.site = record.site ) || context.user == record.user 
  end

  def update?
    edit?
  end
  
  def destroy?
    edit?
  end
  
  def show?
    edit?
  end
  
  def index?
    edit? 
  end

end
