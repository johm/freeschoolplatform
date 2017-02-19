json.extract! course_session, :id, :course_id, :start, :end, :created_at, :updated_at
json.url course_session_url(course_session, format: :json)