Given(/^I have members$/) do |table|
  table.hashes.each do |row|
    create(:member, 
      name: row['name'],
      role: row['role']
    )
  end
end

Given(/^I visit members path$/) do
  visit admin_members_path
end

Then(/^I should see all the members$/) do |table|
  table.raw.each do |row|
    target = page.find('tr', text: row.first)
    row[1..-1].each do |element|
      expect(target).to have_content(element)
    end
  end
end

Then(/^I should see link to edit and delete member "([^"]*)"$/) do |name|
  member = Member.find_by(name: name)
  expect(page).to have_link('Edit', href: edit_admin_member_path(member))
  expect {
    page.find('tr', text: name).click_on('Delete')
  }.to change(Member, :count).by(-1)
  expect(page).not_to have_content(name)
end
