class CreateCourseProposals < ActiveRecord::Migration[5.0]
  def change
    create_table :course_proposals do |t|
      t.string :email
      t.string :proposed_by
      t.references :site

      t.timestamps
    end
  end
end
