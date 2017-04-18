json.extract! course_collection, :id, :name, :description, :site_id, :is_open, :created_at, :updated_at
json.url course_collection_url(course_collection, format: :json)