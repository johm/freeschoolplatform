class CourseCourseSeries < ApplicationRecord
  belongs_to :course
  belongs_to :course_series
end
