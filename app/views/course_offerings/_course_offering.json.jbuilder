json.extract! course_offering, :id, :year, :semester, :course_id, :created_at, :updated_at
json.url course_offering_url(course_offering, format: :json)
