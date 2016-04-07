@admin
Feature: As an admin
  I want to edit a member

Background:
  Given I have members
  | name      | role   |
  | member 1  | role 1 |
  And I visit edit member path of "member 1"

Scenario: Update a member successfully
  When I fill in "Name" with "My member"
  When I fill in "Role" with "role 2"
  And I click on "Update Member"
  Then I should see "Member was successfully updated"
  And I should be on the members page
  And the member should be updated with
  | name        | role   |
  | My member   | role 2 |

Scenario: Update a member failed
  When I fill in "Name" with ""
  And I click on "Update Member"
  Then I should see "Name can't be blank"
