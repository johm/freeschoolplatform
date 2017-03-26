class CourseProposalPolicy < ApplicationPolicy
  def create?
    user.present?
  end

  def new?
    create?
  end

  def edit?
    user == record.user || (user.admin?  && user.site = record.site )
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
