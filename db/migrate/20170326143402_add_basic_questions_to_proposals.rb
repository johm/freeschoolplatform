class AddBasicQuestionsToProposals < ActiveRecord::Migration[5.0]
  def change
    add_column :course_proposals,:title,:string
    add_column :course_proposals,:description,:text
    add_column :course_proposals,:background,:text
  end
end
