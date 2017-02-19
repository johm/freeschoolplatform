json.extract! course_series, :id, :name, :description, :site_id, :is_open, :created_at, :updated_at
json.url course_series_url(course_series, format: :json)