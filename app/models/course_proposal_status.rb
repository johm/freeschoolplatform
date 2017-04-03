class CourseProposalStatus < ApplicationRecord
  belongs_to :course_proposal
  belongs_to :user
end
