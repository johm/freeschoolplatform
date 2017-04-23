class Location < ApplicationRecord
  has_many :courses
  
  def upcoming_courses
    courses.all.where(:published=>true).find_all {|c| c.course_sessions.where("course_sessions.start >= ?",Date.today).length == 0} #TK limit by site
  end
end
