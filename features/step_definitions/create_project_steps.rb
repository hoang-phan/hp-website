Given(/^I visit new project path$/) do
  visit new_admin_project_path
end

When(/^I fill in "([^"]*)" with "([^"]*)"$/) do |field, text|
  fill_in field, with: text
end

When(/^I click on "([^"]*)"$/) do |selector|
  click_on selector
end

Then(/^I should see "([^"]*)"$/) do |content|
  expect(page).to have_content(content)
end

Then(/^the new project should be created with$/) do |table|
  info = table.hashes[0]
  expect(Project).to exist(name: info['name'], start_month: info['start_month'], start_year: info['start_year'])
end

Then(/^I should be on the projects page$/) do
  expect(current_path).to eq admin_projects_path
end
