FactoryBot.define do
  factory :role, class:Role do
    name "Student"
  end

  factory :student, class: User do
    email "joe_student@ait.asia"
    password "password"
    password_confirmation "password"
    role_id FactoryBot.create :role
    #association :student, factory: :role
  end



  factory :course, class: Course do
    code 101
    title "wae"
  end

  factory :course_offering, class: CourseOffering do
    year 2018
    semester "August"
    @x=FactoryBot.create :course
    course_id @x.id
  end







end