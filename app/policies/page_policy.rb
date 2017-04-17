class PagePolicy < ApplicationPolicy
  
  def show?
    record.site == context.site 
  end
  
end
