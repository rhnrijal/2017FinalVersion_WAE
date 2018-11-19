class CourseOffering < ApplicationRecord
  belongs_to :course
  has_many :registers
end
