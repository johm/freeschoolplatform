class CourseRegistrationPolicy < ApplicationPolicy
  def create?
    context.user.present? && record.course.is_listed_on_site?(context.user.site)
  end

  def destroy?
    context.user == record.user 
  end

end
