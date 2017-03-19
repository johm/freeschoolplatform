class CreateUploadedFiles < ActiveRecord::Migration[5.0]
  def change
    create_table :uploaded_files do |t|

      t.timestamps
    end
  end
end
