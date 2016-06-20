Given(/^I visit Roboform and fill form$/) do
    visit('')
	page.fill_in '02frstname',:with => 'Ruber'
	page.fill_in '04lastname',:with => 'Cuellar'
	page.fill_in '10address1',:with => 'Melchor Perez'
	page.fill_in '10address2',:with => 'Simon Lopez'
	
	# Home Phone number
	page.fill_in '20homephon_ac',:with => '591'
	page.fill_in '20homephon_pr',:with => '707'
	page.fill_in '20homephon_sf',:with => '5345345'
	
	page.select 'COLORADO', :from => '14adrstate'
	
	page.fill_in '13adr_city',:with => 'Cochabamba'
	page.fill_in '05_company',:with => 'Jalasoft'
	page.fill_in '16addr_zip',:with => '435345'
	
	# Company Phone
	page.fill_in '21workphon_ac',:with => '591'
	page.fill_in '21workphon_pr',:with => '707'
	page.fill_in '21workphon_sf',:with => '5345345'
	
	# Fax number
	page.fill_in '22faxphone_ac',:with => '123'
	page.fill_in '22faxphone_pr',:with => '24456'
	page.fill_in '22faxphone_sf',:with => '234234435'
	
	# Shopping Method
	#page.select 'Second Day Air', :from => 'ship_methd'
	#page.select 'Visa (Preferred)', :from => '40cc__type'
	
	#page.fill_in '44cc_uname',:with => 'VISA'
	#page.fill_in '41ccnumber',:with => '2342'
	
	#page.select '03', :from => '42ccexp_mm'
	#page.select '2015', :from => '43ccexp_yy'
	
	
	#page.fill_in '24emailadr',:with => 'ruber.cuellar@jalasoft.com'
end

When(/^click reset button$/) do
  page.find_button('Rest').click()
end

Then(/^all fields should be empty$/) do
  page.find_field('02frstname', :type => "text").value
  page.find_field('04lastname', :type => "text").value
  page.find_field('10address1', :type => "text").value
  page.find_field('10address2', :type => "text").value
  page.find_field('20homephon_ac', :type => "text").value
  page.find_field('20homephon_pr', :type => "text").value
  page.find_field('20homephon_sf', :type => "text").value
  
  
end
