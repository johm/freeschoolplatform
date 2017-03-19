class CleanUpProposal < ActiveRecord::Migration[5.0]
  def change
    remove_column :course_proposals,:email
    remove_column :course_proposals,:proposed_by
  end
end
