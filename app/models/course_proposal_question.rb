class CourseProposalQuestion < ApplicationRecord
  has_many :course_proposal_question_options
  belongs_to :site
  accepts_nested_attributes_for :course_proposal_question_options
end
