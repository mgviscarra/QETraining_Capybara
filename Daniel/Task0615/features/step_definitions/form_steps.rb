Given(/^I open the borwser "([^"]*)"$/) do |page|
	visit(page)
end

Given(/^I fill following data:$/) do |input|
	@form_data = input.raw
	@form_data.each do |item|
		page.find_field('02frstname',:type => "text").set(item[0])
		page.find_field('04lastname',:type => "text").set(item[1])
		page.find_field('20homephon_ac',:type => "text").set(item[2])
		page.find_field('20homephon_pr',:type => "text").set(item[2])
		page.find_field('20homephon_sf',:type => "text").set(item[2])
		page.find_field('10address1',:type => "text").set(item[3])
		page.find_field('13adr_city',:type => "text").set(item[4])
		page.find(:xpath, '/html/body/div[3]/div/div/div/form/table[1]/tbody/tr[4]/td[2]/select').select(item[5])
		page.find_field('16addr_zip',:type => "text").set(item[6])
	end
	expect(page.find_field('02frstname',:type => "text").value()).not_to be_empty
	expect(page.find_field('04lastname',:type => "text").value()).not_to be_empty
	expect(page.find_field('20homephon_ac',:type => "text").value()).not_to be_empty
	expect(page.find_field('20homephon_pr',:type => "text").value()).not_to be_empty
	expect(page.find_field('20homephon_sf',:type => "text").value()).not_to be_empty
	expect(page.find_field('10address1',:type => "text").value()).not_to be_empty
	expect(page.find_field('13adr_city',:type => "text").value()).not_to be_empty
	expect(page.find(:xpath, '/html/body/div[3]/div/div/div/form/table[1]/tbody/tr[4]/td[2]/select').value()).not_to be_empty
	expect(page.find_field('16addr_zip',:type => "text").value()).not_to be_empty
end

When(/^I will click in "([^"]*)" button$/) do |button|
	page.find_button('Reset').click()
end

Then(/^The all field will be in initial state$/) do
	expect(page.find_field('02frstname',:type => "text").value()).to be_empty
	expect(page.find_field('04lastname',:type => "text").value()).to be_empty
	expect(page.find_field('20homephon_ac',:type => "text").value()).to be_empty
	expect(page.find_field('20homephon_pr',:type => "text").value()).to be_empty
	expect(page.find_field('20homephon_sf',:type => "text").value()).to be_empty
	expect(page.find_field('10address1',:type => "text").value()).to be_empty
	expect(page.find_field('13adr_city',:type => "text").value()).to be_empty
	expect(page.find(:xpath, '/html/body/div[3]/div/div/div/form/table[1]/tbody/tr[4]/td[2]/select').value()).to be_empty
	expect(page.find_field('16addr_zip',:type => "text").value()).to be_empty
end


# 02frstname -- name

