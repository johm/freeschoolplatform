class Course < ApplicationRecord
  belongs_to :location
  belongs_to :instructor, class_name: "User"
  belongs_to :homesite, class_name: "Site"

  sir_trevor_content :full_description
  
end
