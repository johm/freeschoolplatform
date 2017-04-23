class AddVeryShortDescriptionToCourseCollection < ActiveRecord::Migration[5.0]
  def change
    add_column :course_collections, :very_short_description, :text
  end
end
