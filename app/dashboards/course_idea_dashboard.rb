require "administrate/base_dashboard"

class CourseIdeaDashboard < Administrate::BaseDashboard
  # ATTRIBUTE_TYPES
  # a hash that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
    site: Field::BelongsTo,
    id: Field::Number,
    name: Field::String,
    email: Field::String,
    what: Field::Text,
    format_of_idea: Field::String,
    created_at: Field::DateTime,
    updated_at: Field::DateTime,
  }.freeze

  # COLLECTION_ATTRIBUTES
  # an array of attributes that will be displayed on the model's index page.
  #
  # By default, it's limited to four items to reduce clutter on index pages.
  # Feel free to add, remove, or rearrange items.
  COLLECTION_ATTRIBUTES = [
    :what,
    :format_of_idea,
    :name,
    :email,
  ].freeze

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = [
    :id,
    :name,
    :email,
    :what,
    :format_of_idea,
    :created_at,
    :updated_at,
  ].freeze

  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = [
    :name,
    :email,
    :what,
    :format_of_idea,
  ].freeze

  # Overwrite this method to customize how course ideas are displayed
  # across all pages of the admin dashboard.
  #
  # def display_resource(course_idea)
  #   "CourseIdea ##{course_idea.id}"
  # end
end
