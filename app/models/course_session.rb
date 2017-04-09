class CourseSession < ApplicationRecord
  belongs_to :course
  validates_datetime :end,:after=>:start
  validates_date :end,:is_at=>:start

end
