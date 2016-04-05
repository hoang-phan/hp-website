@admin
Feature: As an admin
  I want to edit a project

Background:
  Given I have projects
  | name      | start_date | end_date   |
  | project 1 | 12/10/2012 | 1/20/2016  |
  And I have members
  | name      | role   |
  | member 1  | role 1 |
  | member 2  | role 2 |
  And I visit edit project path of "project 1"

Scenario: Update a project successfully
  When I fill in "Name" with "My project"
  And I fill in "Start date" with "2015-12-15"
  And I fill in "End date" with "2015-12-18"
  And I click on "Update Project"
  Then I should see "Project was successfully updated"
  And I should be on the projects page
  And the project should be updated with
  | name        | start_date | end_date   |
  | My project  | 12/15/2015 | 12/18/2015 |

Scenario: Update a project failed
  When I fill in "Name" with ""
  And I click on "Update Project"
  Then I should see "Name can't be blank"

Scenario: Select and unselect members of a project
  When I check "member 1"
  And I click on "Update Project"
  Then I should see "Project was successfully updated"
  And the project "project 1" should have member "member 1"

  Given I visit edit project path of "project 1"
  When I uncheck "member 1"
  And I click on "Update Project"
  Then I should see "Project was successfully updated"
  And the project "project 1" should not have member "member 1"
