Given(/^I visit edit project path of "([^"]*)"$/) do |name|
  visit edit_admin_project_path(Project.find_by(name: name))
end

Then(/^the project should be updated with$/) do |table|
  info = table.hashes[0]
  expect(Project).to exist(name: info['name'], start_date: info['start_date'], end_date: info['end_date'])
end
