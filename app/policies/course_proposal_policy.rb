class CourseProposalPolicy < ApplicationPolicy
  def create?
    context.user.present?
  end

  def new?
    create?
  end

  def reject?
    (context.user.admin?  && context.user.site = record.site )
  end

  def approve?
    reject?
  end
  
  def defer?
    reject?
  end

  def edit?
    context.user == record.user || (context.user.admin?  && context.user.site = record.site )
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
