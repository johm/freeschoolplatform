class CourseProposal < ApplicationRecord
  belongs_to :site
  belongs_to :user
  has_many :course_proposal_statuses
  has_many :course_proposal_question_answers
  accepts_nested_attributes_for :course_proposal_question_answers


  def new?
    course_proposal_statuses.length == 0
  end

  def approved?
    course_proposal_statuses.last.proposal_status == "Approved" rescue false
  end

  def rejected?
    course_proposal_statuses.last.proposal_status == "Rejected" rescue false
  end

  def need_more_info?
    course_proposal_statuses.last.proposal_status == "More Info Needed" rescue false
  end
  
  
end
