class CourseProposalQuestionAnswer < ApplicationRecord
  belongs_to :course_proposal_question
  belongs_to :course_proposal
end
