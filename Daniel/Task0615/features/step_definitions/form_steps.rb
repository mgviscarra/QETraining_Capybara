Given(/^I open the borwser "([^"]*)"$/) do |page|
	visit(page)
end

Given(/^I fill following data:$/) do |input|
	@form_data = input.raw
	@form_data.each do |item|
		phone = item[2]
		phonew = item[9]
		phonef = item[11]
		page.find_field('02frstname',:type => "text").set(item[0])
		page.find_field('04lastname',:type => "text").set(item[1])
		page.find_field('20homephon_ac',:type => "text").set(phone[0,(((phone.bytesize - 4)-3))])
		page.find_field('20homephon_pr',:type => "text").set(phone[((phone.bytesize - 4)-3),3])
		page.find_field('20homephon_sf',:type => "text").set(phone[(phone.bytesize - 4),4])
		page.find_field('10address1',:type => "text").set(item[3])
		page.find_field('13adr_city',:type => "text").set(item[4])
		page.find(:xpath, '/html/body/div[3]/div/div/div/form/table[1]/tbody/tr[4]/td[2]/select').find("option[value='#{item[5]}']").click
		page.find_field('16addr_zip',:type => "text").set(item[6])
		page.find_field('10address2',:type => "text").set(item[7])
		page.find_field('05_company',:type => "text").set(item[8])
		page.find_field('21workphon_ac',:type => "text").set(phonew[0,(((phonew.bytesize - 4)-3))])
		page.find_field('21workphon_pr',:type => "text").set(phonew[((phonew.bytesize - 4)-3),3])
		page.find_field('21workphon_sf',:type => "text").set(phonew[(phonew.bytesize - 4),4])
		page.find_field('21workphon_ex',:type => "text").set(item[10])
		page.find_field('22faxphone_ac',:type => "text").set(phonef[0,(((phonef.bytesize - 4)-3))])
		page.find_field('22faxphone_pr',:type => "text").set(phonef[((phonef.bytesize - 4)-3),3])
		page.find_field('22faxphone_sf',:type => "text").set(phonef[(phonef.bytesize - 4),4])
		# Verify if data was introduced
		expect(page.find_field('02frstname',:type => "text").value()).to eq(item[0])
		expect(page.find_field('04lastname',:type => "text").value()).to eq(item[1])
		expect(page.find_field('20homephon_ac',:type => "text").value()).to eq(phone[0,(((phone.bytesize - 4)-3))])
		expect(page.find_field('20homephon_pr',:type => "text").value()).to eq(phone[((phone.bytesize - 4)-3),3])
		expect(page.find_field('20homephon_sf',:type => "text").value()).to eq(phone[(phone.bytesize - 4),4])
		expect(page.find_field('10address1',:type => "text").value()).to eq(item[3])
		expect(page.find_field('13adr_city',:type => "text").value()).to eq(item[4])
		expect(page.find(:xpath, '/html/body/div[3]/div/div/div/form/table[1]/tbody/tr[4]/td[2]/select').value()).to eq(item[5])
		expect(page.find_field('16addr_zip',:type => "text").value()).to eq(item[6])
		expect(page.find_field('10address2',:type => "text").value()).to eq(item[7])
		expect(page.find_field('05_company',:type => "text").value()).to eq(item[8])
		expect(page.find_field('21workphon_ac',:type => "text").value()).to eq(phonew[0,(((phonew.bytesize - 4)-3))])
		expect(page.find_field('21workphon_pr',:type => "text").value()).to eq(phonew[((phonew.bytesize - 4)-3),3])
		expect(page.find_field('21workphon_sf',:type => "text").value()).to eq(phonew[(phonew.bytesize - 4),4])
		expect(page.find_field('21workphon_ex',:type => "text").value()).to eq(item[10])
		expect(page.find_field('22faxphone_ac',:type => "text").value()).to eq(phonef[0,(((phonef.bytesize - 4)-3))])
		expect(page.find_field('22faxphone_pr',:type => "text").value()).to eq(phonef[((phonef.bytesize - 4)-3),3])
		expect(page.find_field('22faxphone_sf',:type => "text").value()).to eq(phonef[(phonef.bytesize - 4),4])

		
	end
	
end

Given(/^I fill folloqing Payment & Shipping Information:$/) do |payment|
	@form_data = payment.raw
	@form_data.each do |item|
		page.find(:xpath, '/html/body/div[3]/div/div/div/form/table[2]/tbody/tr[2]/td[1]/select').find("option[value='#{item[0]}']").click
		page.find(:xpath, '/html/body/div[3]/div/div/div/form/table[3]/tbody/tr[1]/td/select').find("option[value='#{item[1]}']").click
		page.fill_in '44cc_uname', :with => item[2]
		#page.find_field('44cc_uname',:type => "text").set(item[2])
		page.find_field('41ccnumber',:type => "text").set(item[3])
		page.find(:xpath, '/html/body/div[3]/div/div/div/form/table[3]/tbody/tr[2]/td[3]/nobr/select[1]').find("option[value='#{item[4]}']").click
		page.find(:xpath, '/html/body/div[3]/div/div/div/form/table[3]/tbody/tr[2]/td[3]/nobr/select[2]').find("option[value='#{item[5]}']").click
		page.find_field('24emailadr',:type => "text").set(item[6])
		page.find(:xpath, '/html/body/div[3]/div/div/div/form/table[3]/tbody/tr[4]/td[2]/font/select').find("option[value='#{item[7]}']").click
		page.find(:xpath, '/html/body/div[3]/div/div/div/form/table[3]/tbody/tr[5]/td[1]/input').set(item[8])
		page.find(:xpath, '/html/body/div[3]/div/div/div/form/table[3]/tbody/tr[5]/td[2]/input').set(item[9])
		#page.find_field('31password',:type => "password").set(item[8])
		#page.find_field('31password',:type => "password").set(item[9])
		page.find_field('32passques',:type => "text").set(item[10])
		page.check('newsletter',:option => 1)
		# Verify if data was introduced
		expect(page.find(:xpath, '/html/body/div[3]/div/div/div/form/table[2]/tbody/tr[2]/td[1]/select').value()).to eq(item[0])
		expect(page.find(:xpath, '/html/body/div[3]/div/div/div/form/table[3]/tbody/tr[1]/td/select').value()).to eq(item[1])
		expect(page.find_field('44cc_uname',:type => "text").value()).to eq(item[2])
		expect(page.find_field('41ccnumber',:type => "text").value()).to eq(item[3])
		expect(page.find(:xpath, '/html/body/div[3]/div/div/div/form/table[3]/tbody/tr[2]/td[3]/nobr/select[1]').value()).to eq(item[4])
		expect(page.find(:xpath, '/html/body/div[3]/div/div/div/form/table[3]/tbody/tr[2]/td[3]/nobr/select[2]').value()).to eq(item[5])
		expect(page.find_field('24emailadr',:type => "text").value()).to eq(item[6])
		expect(page.find(:xpath, '/html/body/div[3]/div/div/div/form/table[3]/tbody/tr[4]/td[2]/font/select').value()).to eq(item[7])
		expect(page.find(:xpath, '/html/body/div[3]/div/div/div/form/table[3]/tbody/tr[5]/td[1]/input').value()).to eq(item[8])
		expect(page.find(:xpath, '/html/body/div[3]/div/div/div/form/table[3]/tbody/tr[5]/td[2]/input').value()).to eq(item[9])
		expect(page.find_field('32passques',:type => "text").value()).to eq(item[10])
		expect(page.find_field('newsletter',:type => "checkbox")).to be_checked

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
	expect(page.find_field('16addr_zip',:type => "text").value()).to be_empty
	expect(page.find_field('10address2',:type => "text").value()).to be_empty
	expect(page.find_field('05_company',:type => "text").value()).to be_empty
	expect(page.find_field('21workphon_ac',:type => "text").value()).to be_empty
	expect(page.find_field('21workphon_pr',:type => "text").value()).to be_empty
	expect(page.find_field('21workphon_sf',:type => "text").value()).to be_empty
	expect(page.find_field('21workphon_ex',:type => "text").value()).to be_empty
	expect(page.find_field('22faxphone_ac',:type => "text").value()).to be_empty
	expect(page.find_field('22faxphone_pr',:type => "text").value()).to be_empty
	expect(page.find_field('22faxphone_sf',:type => "text").value()).to be_empty
	# Verify Payment & Shipping Information
	expect(page.find(:xpath, '/html/body/div[3]/div/div/div/form/table[2]/tbody/tr[2]/td[1]/select').value()).to eq("0")
	expect(page.find(:xpath, '/html/body/div[3]/div/div/div/form/table[3]/tbody/tr[1]/td/select').value()).to eq("0")
	expect(page.find_field('44cc_uname',:type => "text").value()).to be_empty
	expect(page.find_field('41ccnumber',:type => "text").value()).to be_empty
	expect(page.find(:xpath, '/html/body/div[3]/div/div/div/form/table[3]/tbody/tr[2]/td[3]/nobr/select[1]').value()).to eq("1")
	expect(page.find(:xpath, '/html/body/div[3]/div/div/div/form/table[3]/tbody/tr[2]/td[3]/nobr/select[2]').value()).to eq("2011")
	expect(page.find_field('24emailadr',:type => "text").value()).to be_empty
	expect(page.find(:xpath, '/html/body/div[3]/div/div/div/form/table[3]/tbody/tr[4]/td[2]/font/select').value()).to be_empty
	expect(page.find(:xpath, '/html/body/div[3]/div/div/div/form/table[3]/tbody/tr[5]/td[1]/input').value()).to be_empty
	expect(page.find(:xpath, '/html/body/div[3]/div/div/div/form/table[3]/tbody/tr[5]/td[2]/input').value()).to be_empty
	expect(page.find_field('32passques',:type => "text").value()).to be_empty
	expect(page.find_field('newsletter',:type => "checkbox")).not_to be_checked
end

