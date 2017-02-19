class CreateCourseProposalQuestionSites < ActiveRecord::Migration[5.0]
  def change
    create_table :course_proposal_question_sites do |t|
      t.references :course_proposal_question,index: {:name => "index_cpqs"}
      t.references :site

      t.timestamps
    end
  end
end
