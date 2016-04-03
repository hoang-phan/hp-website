@admin
Feature: As an admin
  I want to edit a project

Scenario: Update a project successfully
  Given I have projects
  | name      | start_date | end_date   |
  | project 1 | 12/10/2012 | 1/20/2016  |
  Given I visit edit project path of "project 1"
  When I fill in "Name" with "My project"
  And I fill in "Start date" with "2015-12-15"
  And I fill in "End date" with "2015-12-18"
  And I click on "Update Project"
  Then I should see "Project was successfully updated"
  And I should be on the projects page
  And the project should be updated with
  | name        | start_date | end_date   |
  | My project  | 12/15/2015 | 12/18/2015 |
