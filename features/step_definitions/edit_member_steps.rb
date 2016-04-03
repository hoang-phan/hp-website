Given(/^I visit edit member path of "([^"]*)"$/) do |name|
  visit edit_admin_member_path(Member.find_by(name: name))
end

Then(/^the member should be updated with$/) do |table|
  info = table.hashes[0]
  expect(Member).to exist(name: info['name'], role: info['role'])
end
