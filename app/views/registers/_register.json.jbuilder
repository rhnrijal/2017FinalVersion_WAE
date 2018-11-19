json.extract! register, :id, :user_id, :course_offering_id, :grade, :created_at, :updated_at
json.url register_url(register, format: :json)
