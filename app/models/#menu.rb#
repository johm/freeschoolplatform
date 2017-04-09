class Menu < ApplicationRecord
  belongs_to :site
  has_many :menu_pages
  has_many :pages, :through => :menu_pages
  accepts_nested_attributes_for :menu_pages

end
