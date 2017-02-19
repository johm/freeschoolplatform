json.extract! course, :id, :name, :very_short_description, :full_description, :location_id, :instructor_id, :homesite_id, :created_at, :updated_at
json.url course_url(course, format: :json)