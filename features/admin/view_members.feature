@admin
Feature: As an admin
  I want to views all members

Scenario: View members
  Given I have members
  | name     | role          |
  | member 1 | ROR developer |
  | member 2 | Android dev   |
  And I visit members path
  Then I should see all the members
  | member 1 | ROR developer |
  | member 2 | Android dev   |
  And I should see link to edit and delete member "member 1"
  And I should see link to edit and delete member "member 2"
