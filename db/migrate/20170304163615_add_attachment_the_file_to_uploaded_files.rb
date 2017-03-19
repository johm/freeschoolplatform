class AddAttachmentTheFileToUploadedFiles < ActiveRecord::Migration
  def self.up
    change_table :uploaded_files do |t|
      t.attachment :the_file
    end
  end

  def self.down
    remove_attachment :uploaded_files, :the_file
  end
end
