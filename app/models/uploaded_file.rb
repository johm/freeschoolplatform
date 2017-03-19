class UploadedFile < ApplicationRecord
  has_attached_file :the_file, 
  :styles => {
    :thumb => "100x100#",
    :small  => "2000x200>",
    :medium => "800x800" }
  validates_attachment :the_file,
  content_type: { content_type: ["image/jpeg", "image/gif", "image/png","application/pdf"] }


end
