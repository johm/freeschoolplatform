class MenuPage < ApplicationRecord
  belongs_to :menu
  belongs_to :page
  default_scope { order('position asc') } 
end
