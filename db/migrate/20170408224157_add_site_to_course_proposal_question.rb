class AddSiteToCourseProposalQuestion < ActiveRecord::Migration[5.0]
  def change
    add_reference :course_proposal_questions, :site
  end
end
