class Site < ApplicationRecord
  belongs_to :homepage, class_name: "Page"
  has_many :menus
  
  def to_s
    name
  end

end
