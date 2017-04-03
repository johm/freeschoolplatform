class Course < ApplicationRecord
  belongs_to :location, optional: true
  belongs_to :instructor, class_name: "User"
  belongs_to :homesite, class_name: "Site"
  has_many :course_sessions
  sir_trevor_content :full_description
  has_many :crosslistings
  has_many :crosslisting_sites,:through=>"crosslistings",:source=>:site
  has_many :course_registrations
  has_many :learners,:through => :course_registrations,:source=>:user


  def is_listed_on_site?(site)
    homesite==site || crosslisting_sites.include?(site)
  end

end
