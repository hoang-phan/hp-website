Given(/^I visit dashboard path$/) do
  visit admin_dashboard_path
end

Then(/^the current tab should be "([^"]*)"$/) do |tab|
  expect(page).to have_css('li.active', text: tab)
end

Then(/^I should see link to projects page$/) do
  expect(page).to have_link('Projects', href: admin_projects_path)
end
