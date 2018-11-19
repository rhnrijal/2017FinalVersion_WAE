json.extract! course, :id, :code, :title, :created_at, :updated_at
json.url course_url(course, format: :json)
