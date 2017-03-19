class Site < ApplicationRecord
  belongs_to :homepage, class_name: "Page"
  
  def to_s
    name
  end

end
