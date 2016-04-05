Given(/^I visit edit project path of "([^"]*)"$/) do |name|
  visit edit_admin_project_path(Project.find_by(name: name))
end

Then(/^the project should be updated with$/) do |table|
  info = table.hashes[0]
  expect(Project).to exist(name: info['name'], start_date: info['start_date'], end_date: info['end_date'])
end

When(/^I check "([^"]*)"$/) do |selector|
  check selector
end

Then(/^the project "([^"]*)" should have member "([^"]*)"$/) do |project_name, member_name|
  expect(MemberProject).to exist(project: Project.where(name: project_name), member: Member.where(name: member_name))
end

When(/^I uncheck "([^"]*)"$/) do |selector|
  uncheck selector
end

Then(/^the project "([^"]*)" should not have member "([^"]*)"$/) do |project_name, member_name|
  expect(MemberProject).not_to exist(project: Project.where(name: project_name), member: Member.where(name: member_name))
end
