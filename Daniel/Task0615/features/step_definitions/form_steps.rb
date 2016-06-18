Given(/^I open the borwser "([^"]*)"$/) do |page|
	visit(page)
end

Given(/^I fill following data:$/) do |input|
	@form_data = input.transpose.rows
	@form_data.each do |items|
		typeSelector = items[0][0]
		@name =  items[0][1,items[0].bytesize]
		if typeSelector == "t"
			page.fill_in @name , :with => items[1]
		elsif typeSelector == "s"
			page.find(:xpath, "//Select[@name='#{@name}']").find("option[value='#{items[1]}']").click
		end

		
		#end
=begin
#phone = item[2]
		#phonew = item[9]
		#phonef = item[11]
		#items.each do |item|


		page.fill_in '02frstname', :with => item[0]
		page.fill_in '04lastname', :with => item[1]
		page.fill_in '20homephon_ac', :with => phone[0,(((phone.bytesize - 4)-3))]
		page.fill_in '20homephon_pr', :with => phone[((phone.bytesize - 4)-3),3]
		page.fill_in '20homephon_sf', :with => phone[(phone.bytesize - 4),4]
		page.fill_in '10address1', :with => item[3]
		page.fill_in '13adr_city', :with => item[4]
		page.find(:xpath, '//Select[@name="14adrstate"]').find("option[value='#{item[5]}']").click
		page.fill_in '16addr_zip', :with => item[6]
		page.fill_in '10address2', :with => item[7]
		page.fill_in '05_company', :with => item[8]
		page.fill_in '21workphon_ac', :with => phonew[0,(((phonew.bytesize - 4)-3))]
		page.fill_in '21workphon_pr', :with => phonew[((phonew.bytesize - 4)-3),3]
		page.fill_in '21workphon_sf', :with => phonew[(phonew.bytesize - 4),4]
		page.fill_in '21workphon_ex', :with => item[10]
		page.fill_in '22faxphone_ac', :with => phonef[0,(((phonef.bytesize - 4)-3))]
		page.fill_in '22faxphone_pr', :with => phonef[((phonef.bytesize - 4)-3),3]
		page.fill_in '22faxphone_sf', :with => phonef[(phonef.bytesize - 4),4]
	
		# Verify if data was introduced
		expect(page.find_field('02frstname',:type => "text").value()).to eq(item[0])
		expect(page.find_field('04lastname',:type => "text").value()).to eq(item[1])
		expect(page.find_field('20homephon_ac',:type => "text").value()).to eq(phone[0,(((phone.bytesize - 4)-3))])
		expect(page.find_field('20homephon_pr',:type => "text").value()).to eq(phone[((phone.bytesize - 4)-3),3])
		expect(page.find_field('20homephon_sf',:type => "text").value()).to eq(phone[(phone.bytesize - 4),4])
		expect(page.find_field('10address1',:type => "text").value()).to eq(item[3])
		expect(page.find_field('13adr_city',:type => "text").value()).to eq(item[4])
		expect(page.find(:xpath, '//Select[@name="14adrstate"]').value()).to eq(item[5])
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
=end
	end

end

Given(/^I fill folloqing Payment & Shipping Information:$/) do |payment|
	@form_data = payment.raw
	@form_data.each do |item|
		
		page.find(:xpath, '//Select[@name="ship_methd"]').find("option[value='#{item[0]}']").click
		page.find(:xpath, '//Select[@name="40cc__type"]').find("option[value='#{item[1]}']").click
		page.fill_in '44cc_uname', :with => item[2]
		page.fill_in '41ccnumber', :with => item[3]
		page.find(:xpath, '//Select[@name="42ccexp_mm"]').find("option[value='#{item[4]}']").click
		page.find(:xpath, '//Select[@name="43ccexp_yy"]').find("option[value='#{item[5]}']").click
		page.fill_in '24emailadr', :with => item[6]
		page.find(:xpath, '//Select[@name="shopr_type"]').find("option[value='#{item[7]}']").click
		page.find(:xpath, '(//tr/td[*]/input[@name="31password"])[1]').set(item[8])
		page.find(:xpath, '(//tr/td[*]/input[@name="31password"])[2]').set(item[9])
		page.fill_in '32passques', :with => item[10]
		page.check('newsletter',:option => 1)
		# Verify if data was introduced
		expect(page.find(:xpath, '//Select[@name="ship_methd"]').value()).to eq(item[0])
		expect(page.find(:xpath, '//Select[@name="40cc__type"]').value()).to eq(item[1])
		expect(page.find_field('44cc_uname',:type => "text").value()).to eq(item[2])
		expect(page.find_field('41ccnumber',:type => "text").value()).to eq(item[3])
		expect(page.find(:xpath, '//Select[@name="42ccexp_mm"]').value()).to eq(item[4])
		expect(page.find(:xpath, '//Select[@name="43ccexp_yy"]').value()).to eq(item[5])
		expect(page.find_field('24emailadr',:type => "text").value()).to eq(item[6])
		expect(page.find(:xpath, '//Select[@name="shopr_type"]').value()).to eq(item[7])
		expect(page.find(:xpath, '(//tr/td[*]/input[@name="31password"])[1]').value()).to eq(item[8])
		expect(page.find(:xpath, '(//tr/td[*]/input[@name="31password"])[2]').value()).to eq(item[9])
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
	expect(page.find(:xpath, '//Select[@name="14adrstate"]').value()).to be_empty
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
	expect(page.find(:xpath, '//Select[@name="ship_methd"]').value()).to eq("0")
	expect(page.find(:xpath, '//Select[@name="40cc__type"]').value()).to eq("0")
	expect(page.find_field('44cc_uname',:type => "text").value()).to be_empty
	expect(page.find_field('41ccnumber',:type => "text").value()).to be_empty
	expect(page.find(:xpath, '//Select[@name="42ccexp_mm"]').value()).to eq("1")
	expect(page.find(:xpath, '//Select[@name="43ccexp_yy"]').value()).to eq("2011")
	expect(page.find_field('24emailadr',:type => "text").value()).to be_empty
	expect(page.find(:xpath, '//Select[@name="shopr_type"]').value()).to be_empty
	expect(page.find(:xpath, '(//tr/td[*]/input[@name="31password"])[1]').value()).to be_empty
	expect(page.find(:xpath, '(//tr/td[*]/input[@name="31password"])[2]').value()).to be_empty
	expect(page.find_field('32passques',:type => "text").value()).to be_empty
	expect(page.find_field('newsletter',:type => "checkbox")).not_to be_checked
end

