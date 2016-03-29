@admin
Feature: As an admin
  I want to views all projects

Scenario: View projects
  Given I have projects
  | name      | start_date | end_date   |
  | project 1 | 12/10/2012 | 1/20/2016  |
  | project 2 | 1/12/2012  | 12/12/2016 |
  And I visit projects path
  Then I should see all the projects
  | project 1 | 12/10/2012 | 1/20/2016  |
  | project 2 | 1/12/2012  | 12/12/2016 |
  And I should see link to edit and delete project "project 1"
  And I should see link to edit and delete project "project 2"
