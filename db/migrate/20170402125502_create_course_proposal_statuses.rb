class CreateCourseProposalStatuses < ActiveRecord::Migration[5.0]
  def change
    create_table :course_proposal_statuses do |t|
      t.string :proposal_status
      t.references :course_proposal, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
