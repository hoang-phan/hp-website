Feature: As an admin
  I want to visit dashboard page

Scenario: Current tab
  Given I visit dashboard path
  Then the current tab should be "Dashboard"
  And I should see link to projects page
