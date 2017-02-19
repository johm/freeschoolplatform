class CreateCourseProposalQuestions < ActiveRecord::Migration[5.0]
  def change
    create_table :course_proposal_questions do |t|
      t.text :question
      t.text :help_text

      t.timestamps
    end
  end
end
