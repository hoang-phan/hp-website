@admin
Feature: As an admin
  I want to edit a member

Scenario: Update a member successfully
  Given I have members
  | name      | role   |
  | member 1  | role 1 |
  Given I visit edit member path of "member 1"
  When I fill in "Name" with "My member"
  When I fill in "Role" with "role 2"
  And I click on "Update Member"
  Then I should see "Member was successfully updated"
  And I should be on the members page
  And the member should be updated with
  | name        | role   |
  | My member   | role 2 |
