class AddIsPublishedToCourseCollection < ActiveRecord::Migration[5.0]
  def change
    add_column :course_collections, :is_published, :boolean
  end
end
