class Page < ApplicationRecord
  belongs_to :site
  sir_trevor_content :body
  
  def to_s
    name
  end

end
