class AddBasicQuestionsToProposalsTwo < ActiveRecord::Migration[5.0]
  def change
    add_column :course_proposals,:scheduling,:text
  end
end
