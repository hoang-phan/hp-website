@admin
Feature: As an admin
  I want to create a project

Background:
  Given I visit new project path

Scenario: Create a project successfully
  When I fill in "Name" with "My project"
  And I fill in "Start month" with "1"
  And I fill in "Start year" with "2015"
  And I click on "Create Project"
  Then I should see "Project was successfully created"
  And I should be on the projects page
  And the new project should be created with
  | name        | start_month | start_year  |
  | My project  | 1           | 2015        |

Scenario: Create a project failed
  When I click on "Create Project"
  Then I should see "Name can't be blank"
