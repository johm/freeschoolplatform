class Site < ApplicationRecord
  belongs_to :homepage, class_name: "Page"
  has_many :menus
  has_many :crosslistings
  has_many :crosslisted_courses,:through=>"crosslistings",class_name:"Course"
  
  def to_s
    name
  end

end
