class CourseProposalQuestionOption < ApplicationRecord
  belongs_to :course_proposal_question, optional: true
end
