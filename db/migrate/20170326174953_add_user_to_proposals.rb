class AddUserToProposals < ActiveRecord::Migration[5.0]
  def change
    add_reference :course_proposals, :user, foreign_key: true
  end
end
