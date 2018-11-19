Given("I am a student") do
  @user = FactoryBot.create :student
end

Given("there is a course") do
  @course = FactoryBot.create :course
  print (@course.id)
end

Given("there is a course offering") do
  @course_offering = FactoryBot.create :course_offering
  print (@course_offering.year)
end

Given("I am signed in") do
  visit '/users/sign_in'
  fill_in 'Email', with: @user.email
  fill_in 'Password', with: @user.password
  click_button 'Log in'
  save_and_open_page
end

Given("I want to view the course offered in current semester") do
  visit '/'
end

When("I visit the course offering page") do
  visit '/course_offerings'
  save_and_open_page
end

Then("I should see a link for registration") do
  expect(page).to have_link('Register',href: '/registers/new')
end

When("I click the link for registration") do
  find_link('Register',href: '/registers/new').click
end

Then("I should see the registration page") do
  #save_and_open_page
  expect(page).to have_selector('form')
end

Then("I should see a form to register") do
  visit '/registers/new'
  #save_and_open_page
end

When("I submit the form") do

  #visit '/registers/new'
  save_and_open_page
  fill_in 'Course offering', with: @course_offering.course_id
  click_button 'Create Register'

end

Then("I should see that i am registered") do
  # visit '/registers'
end

