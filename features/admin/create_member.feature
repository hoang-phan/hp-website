@admin
Feature: As an admin
  I want to create a member

Background:
  Given I visit new member path

Scenario: Create a member successfully
  When I fill in "Name" with "member 1"
  And I fill in "Role" with "role 1"
  And I click on "Create Member"
  Then I should see "Member was successfully created"
  And I should be on the members page
  And the new member should be created with
  | name        | role   |
  | member 1    | role 1 |

Scenario: Create a member failed
  When I click on "Create Member"
  Then I should see "Name can't be blank"
