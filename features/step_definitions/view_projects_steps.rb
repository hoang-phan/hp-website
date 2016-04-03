Given(/^I have projects$/) do |table|
  table.hashes.each do |row|
    create(:project, 
      name: row['name'],
      start_date: Date.strptime(row['start_date'], '%m/%d/%Y'),
      end_date: Date.strptime(row['end_date'], '%m/%d/%Y')
    )
  end
end

Given(/^I visit projects path$/) do
  visit admin_projects_path
end

Then(/^I should see all the projects$/) do |table|
  table.raw.each do |row|
    target = page.find('tr', text: row.first)
    row[1..-1].each do |element|
      expect(target).to have_content(element)
    end
  end
end

Then(/^I should see link to edit and delete project "([^"]*)"$/) do |name|
  project = Project.find_by(name: name)
  expect(page).to have_link('Edit', href: edit_admin_project_path(project))
  expect {
    page.find('tr', text: name).click_on('Delete')
  }.to change(Project, :count).by(-1)
  expect(page).not_to have_content(name)
end


