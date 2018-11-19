require "application_system_test_case"

class CourseOfferingsTest < ApplicationSystemTestCase
  setup do
    @course_offering = course_offerings(:one)
  end

  test "visiting the index" do
    visit course_offerings_url
    assert_selector "h1", text: "Course Offerings"
  end

  test "creating a Course offering" do
    visit course_offerings_url
    click_on "New Course Offering"

    fill_in "Course", with: @course_offering.course_id
    fill_in "Semester", with: @course_offering.semester
    fill_in "Year", with: @course_offering.year
    click_on "Create Course offering"

    assert_text "Course offering was successfully created"
    click_on "Back"
  end

  test "updating a Course offering" do
    visit course_offerings_url
    click_on "Edit", match: :first

    fill_in "Course", with: @course_offering.course_id
    fill_in "Semester", with: @course_offering.semester
    fill_in "Year", with: @course_offering.year
    click_on "Update Course offering"

    assert_text "Course offering was successfully updated"
    click_on "Back"
  end

  test "destroying a Course offering" do
    visit course_offerings_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Course offering was successfully destroyed"
  end
end
