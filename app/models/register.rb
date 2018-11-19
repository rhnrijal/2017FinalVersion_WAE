class Register < ApplicationRecord
  belongs_to :user
  belongs_to :course_offering
end
