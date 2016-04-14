@admin
Feature: As an admin
  I want to views all projects

Scenario: View projects
  Given I have projects
  | name       | start_month | start_year  |
  | project 1  | 8           | 2014        |
  | project 2  | 12          | 2010        |
  And I visit projects path
  Then I should see all the projects
  | project 1 | 08 - 2014 |
  | project 2 | 12 - 2010 |
  And I should see link to edit and delete project "project 1"
  And I should see link to edit and delete project "project 2"
