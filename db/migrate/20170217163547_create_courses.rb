class CreateCourses < ActiveRecord::Migration[5.0]
  def change
    create_table :courses do |t|
      t.string :name
      t.text :very_short_description
      t.text :full_description
      t.references :location
      t.references :instructor
      t.references :homesite 

      t.timestamps
    end

    create_table :course_sessions do |t|
      t.references :course
      t.datetime :start
      t.datetime :end

      t.timestamps
    end


  end
end
