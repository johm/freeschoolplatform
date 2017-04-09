require "administrate/base_dashboard"

class CourseProposalQuestionOptionDashboard < Administrate::BaseDashboard
  # ATTRIBUTE_TYPES
  # a hash that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
    id: Field::Number,
    option: Field::String,
    course_proposal_question: Field::BelongsTo,
    created_at: Field::DateTime,
    updated_at: Field::DateTime,
  }.freeze

  # COLLECTION_ATTRIBUTES
  # an array of attributes that will be displayed on the model's index page.
  #
  # By default, it's limited to four items to reduce clutter on index pages.
  # Feel free to add, remove, or rearrange items.
  COLLECTION_ATTRIBUTES = [
    :id,
    :option,
    :course_proposal_question,
    :created_at,
  ].freeze

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = [
    :id,
    :option,
    :course_proposal_question,
    :created_at,
    :updated_at,
  ].freeze

  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = [
    :option,
    :course_proposal_question,
  ].freeze

  # Overwrite this method to customize how course proposal question options are displayed
  # across all pages of the admin dashboard.
  #
  # def display_resource(course_proposal_question_option)
  #   "CourseProposalQuestionOption ##{course_proposal_question_option.id}"
  # end
end
