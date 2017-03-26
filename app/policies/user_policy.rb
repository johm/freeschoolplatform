class UserPolicy < ApplicationPolicy
  def create?
    true
  end

  def new?
    true
  end

  def edit?
    user == record || (user.admin?  && user.site = record.site )
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
