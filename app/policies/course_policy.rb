class CoursePolicy < ApplicationPolicy
  
  def show?
    record.is_listed_on_site?(context.site) &&  (record.published || (context.user && context.user.admin?))
  end
  
end
