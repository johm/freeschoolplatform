class Site < ApplicationRecord
  belongs_to :homepage, class_name: "Page", optional: true
  has_many :menus
  has_many :crosslistings
  has_many :crosslisted_courses,:through=>"crosslistings",class_name:"Course"
  has_many :course_proposal_questions
  has_many :course_collections
  has_many :course_ideas
  has_many :users
  
  accepts_nested_attributes_for :course_proposal_questions  
  def to_s
    name
  end

  def admins
    users.where(:role=>'admin')
  end

end
