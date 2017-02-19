json.extract! course_proposal, :id, :email, :proposed_by, :site_id, :created_at, :updated_at
json.url course_proposal_url(course_proposal, format: :json)