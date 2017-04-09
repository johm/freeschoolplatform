class AddApprovedToCourseSession < ActiveRecord::Migration[5.0]
  def change
    add_column :course_sessions,:approved,:boolean
  end
end
