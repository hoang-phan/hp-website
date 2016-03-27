Feature: As an admin
  I want to create a project

Scenario: Create a project successfully
  Given I visit new project path
  When I fill in "Name" with "My project"
  And I fill in "Start date" with "12/15/2015"
  And I fill in "End date" with "12/18/2015"
  And I click on "Create Project"
  Then I should see "Project was successfully created"
  And I should be on the projects page
  And the new project should be created with
  | name        | start_date | end_date   |
  | My project  | 12/15/2015 | 12/18/2015 |
