class RenameSeries < ActiveRecord::Migration[5.0]
  def change
    rename_column :course_course_series, :course_series_id, :course_collection_id
    rename_table :course_series, :course_collections
    rename_table :course_course_series, :course_course_collections
  end
end
