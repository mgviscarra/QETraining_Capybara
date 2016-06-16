Given(/^I open the borwser "([^"]*)"$/) do |page|
	visit(page)
end

Given(/^I fill following data:$/) do |input|
	@form_data = input.raw
	@form_data.each do |item|
		phone = item[2]
		page.find_field('02frstname',:type => "text").set(item[0])
		page.find_field('04lastname',:type => "text").set(item[1])
		page.find_field('20homephon_ac',:type => "text").set(phone[0,(((phone.bytesize - 4)-3))])
		page.find_field('20homephon_pr',:type => "text").set(phone[((phone.bytesize - 4)-3),3])
		page.find_field('20homephon_sf',:type => "text").set(phone[(phone.bytesize - 4),4])
		page.find_field('10address1',:type => "text").set(item[3])
		page.find_field('13adr_city',:type => "text").set(item[4])
		page.find(:xpath, '/html/body/div[3]/div/div/div/form/table[1]/tbody/tr[4]/td[2]/select').find("option[value='#{item[5]}']").click
		page.find_field('16addr_zip',:type => "text").set(item[6])
		expect(page.find_field('02frstname',:type => "text").value()).to eq(item[0])
		expect(page.find_field('04lastname',:type => "text").value()).to eq(item[1])
		expect(page.find_field('20homephon_ac',:type => "text").value()).to eq(phone[0,(((phone.bytesize - 4)-3))])
		expect(page.find_field('20homephon_pr',:type => "text").value()).to eq(phone[((phone.bytesize - 4)-3),3])
		expect(page.find_field('20homephon_sf',:type => "text").value()).to eq(phone[(phone.bytesize - 4),4])
		expect(page.find_field('10address1',:type => "text").value()).to eq(item[3])
		expect(page.find_field('13adr_city',:type => "text").value()).to eq(item[4])
		expect(page.find(:xpath, '/html/body/div[3]/div/div/div/form/table[1]/tbody/tr[4]/td[2]/select').value()).to eq(item[5])
		#expect(page.find(:xpath, '/html/body/div[3]/div/div/div/form/table[1]/tbody/tr[4]/td[2]/select').find('option[selected]').text).to eq(item[5])
		expect(page.find_field('16addr_zip',:type => "text").value()).to eq(item[6])
	end
	
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

