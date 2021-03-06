require "administrate/base_dashboard"

class CourseProposalDashboard < Administrate::BaseDashboard
  # ATTRIBUTE_TYPES
  # a hash that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
    site: Field::BelongsTo,
    user: Field::BelongsTo,
    id: Field::Number,
    title: Field::String,
    description: Field::Text,
    background: Field::Text,
    scheduling: Field::Text,
    course_proposal_question_answers: Field::NestedHasMany.with_options(skip: :course_proposal, limit: 100),
    created_at: Field::DateTime,
    updated_at: Field::DateTime,
  }.freeze

  # COLLECTION_ATTRIBUTES
  # an array of attributes that will be displayed on the model's index page.
  #
  # By default, it's limited to four items to reduce clutter on index pages.
  # Feel free to add, remove, or rearrange items.
  COLLECTION_ATTRIBUTES = [
    :user,
    :title,
    :created_at
  ].freeze

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = [
    :site,
    :id,
    :title,
    :user,
    :description,
    :background,
    :scheduling,
    :course_proposal_question_answers,                          
    :created_at,
    :updated_at,
  ].freeze

  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = [
    :site,
    :title,
    :user,
    :description,
    :background,
    :scheduling
  ].freeze

  # Overwrite this method to customize how course proposals are displayed
  # across all pages of the admin dashboard.
  #
  # def display_resource(course_proposal)
  #   "CourseProposal ##{course_proposal.id}"
  # end
end
