class CreateCourseCourseSeries < ActiveRecord::Migration[5.0]
  def change
    create_table :course_course_series do |t|
      t.references :course
      t.references :course_series

      t.timestamps
    end
  end
end
