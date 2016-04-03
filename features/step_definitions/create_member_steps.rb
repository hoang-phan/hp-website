Given(/^I visit new member path$/) do
  visit new_admin_member_path
end

Then(/^the new member should be created with$/) do |table|
  info = table.hashes[0]
  expect(Member).to exist(name: info['name'], role: info['role'])
end

Then(/^I should be on the members page$/) do
  expect(current_path).to eq admin_members_path
end
