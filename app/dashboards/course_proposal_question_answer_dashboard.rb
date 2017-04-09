require "administrate/base_dashboard"

class CourseProposalQuestionAnswerDashboard < Administrate::BaseDashboard
  # ATTRIBUTE_TYPES
  # a hash that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
    course_proposal_question: Field::BelongsTo,
    course_proposal: Field::BelongsTo,
    id: Field::Number,
    answer: Field::Text,
    created_at: Field::DateTime,
    updated_at: Field::DateTime,
  }.freeze

  # COLLECTION_ATTRIBUTES
  # an array of attributes that will be displayed on the model's index page.
  #
  # By default, it's limited to four items to reduce clutter on index pages.
  # Feel free to add, remove, or rearrange items.
  COLLECTION_ATTRIBUTES = [
    :course_proposal_question,
    :answer,
  ].freeze

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = [
    :course_proposal_question,
    :course_proposal,
    :id,
    :answer,
    :created_at,
    :updated_at,
  ].freeze

  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = [
    :course_proposal_question,
    :course_proposal,
    :answer,
  ].freeze

  # Overwrite this method to customize how course proposal question answers are displayed
  # across all pages of the admin dashboard.
  #
  # def display_resource(course_proposal_question_answer)
  #   "CourseProposalQuestionAnswer ##{course_proposal_question_answer.id}"
  # end
end
