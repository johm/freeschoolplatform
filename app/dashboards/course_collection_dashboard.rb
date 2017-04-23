require "administrate/base_dashboard"

class CourseCollectionDashboard < Administrate::BaseDashboard
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
    very_short_description: Field::Text,
    description: Field::Text,
    is_open: Field::Boolean,
    is_published: Field::Boolean,
    courses: Field::HasMany,
   created_at: Field::DateTime,
    updated_at: Field::DateTime,
  }.freeze

  # COLLECTION_ATTRIBUTES
  # an array of attributes that will be displayed on the model's index page.
  #
  # By default, it's limited to four items to reduce clutter on index pages.
  # Feel free to add, remove, or rearrange items.
  COLLECTION_ATTRIBUTES = [
    :site,
    :id,
    :name,
    :is_open,
    :is_published
  ].freeze

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = [
    :site,
    :id,
    :name,
    :very_short_description,                          
    :is_open,
    :is_published,
    :courses,
    :created_at,
    :updated_at,
  ].freeze

  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = [
    :site,
    :name,
    :very_short_description,                 
    :description,
    :courses,
    :is_open,
    :is_published
  ].freeze

  # Overwrite this method to customize how course collection are displayed
  # across all pages of the admin dashboard.
  #
  def display_resource(course_collection)
     "Course Collection: #{course_collection.name}"
   end
end
