class CreateCourseProposalQuestionOptions < ActiveRecord::Migration[5.0]
  def change
    create_table :course_proposal_question_options do |t|
      t.string :option
      t.references :course_proposal_question, index: {:name => "cpqi"}
      t.timestamps
    end
  end
end
