class CourseCollectionPolicy < ApplicationPolicy
  
  def show?
    record.site == context.site && (record.is_published || (context.user && context.user.admin?))
  end
  
end
