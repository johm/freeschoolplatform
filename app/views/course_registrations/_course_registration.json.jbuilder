json.extract! course_registration, :id, :course_id, :user_id, :created_at, :updated_at
json.url course_registration_url(course_registration, format: :json)