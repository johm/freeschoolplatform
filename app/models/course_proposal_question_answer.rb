class CourseProposalQuestionAnswer < ApplicationRecord
  belongs_to :course_proposal_question, :optional => true
  belongs_to :course_proposal,:optional => true
end
