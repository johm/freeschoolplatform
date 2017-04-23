class CourseCollection < ApplicationRecord
  belongs_to :site
  sir_trevor_content :description
  has_many :course_course_collections
  has_many :courses, through: :course_course_collections

  def to_s
    name
  end
end
