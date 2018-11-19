Feature: Student
  Student signs in and views the courses being offered in the current semester and checks that he/she is registered.
  Scenario: View the courses being offered and register for one
  A student can view the courses offered and register
    Given I am a student
    And there is a course
    And there is a course offering
    And I am signed in
    When I visit the course offering page
    Then I should see a link for registration
    When I click the link for registration
    Then I should see the registration page
    And I should see a form to register
    When I submit the form
    Then I should see that i am registered