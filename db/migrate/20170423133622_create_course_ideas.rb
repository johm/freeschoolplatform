class CreateCourseIdeas < ActiveRecord::Migration[5.0]
  def change
    create_table :course_ideas do |t|
      t.string :name
      t.string :email
      t.text :what
      t.string :format_of_idea
      t.references :site, foreign_key: true

      t.timestamps
    end
  end
end
