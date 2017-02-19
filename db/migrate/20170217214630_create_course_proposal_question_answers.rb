class CreateCourseProposalQuestionAnswers < ActiveRecord::Migration[5.0]
  def change
    create_table :course_proposal_question_answers do |t|
      t.references :course_proposal_question, foreign_key: true,index: {:name => "index_cpqa"}
      t.text :answer
      t.references :course_proposal, foreign_key: true,index: {:name => "index_cpqa2"}

      t.timestamps
    end
  end
end
