class CourseCollection < ApplicationRecord
  belongs_to :site
  has_many :course_course_collections
  has_many :courses, through: :course_course_collections
end
