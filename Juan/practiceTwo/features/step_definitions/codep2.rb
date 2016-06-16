#Background
Given(/^the page to test$/) do
  visit 'http://www.roboform.com/filling-test-shopping-cart'

end
# Test cases
Given(/^the data:$/) do |table|
  # table is a Cucumber::MultilineArgument::DataTable
  @information=table.raw
  @information.each do |value|
     page.find_field('02frstname',:type => "text").set(value[0])  
     page.find_field('04lastname',:type => "text").set(value[1])  
     page.find_field('20homephon_ac',:type => "text").set(value[2])  
     page.find_field('20homephon_pr',:type => "text").set(value[3])  
     page.find_field('20homephon_sf',:type => "text").set(value[4])  
     page.find_field('10address1',:type => "text").set(value[5])  
     page.find_field('10address2',:type => "text").set(value[6])
     page.find_field('13adr_city',:type => "text").set(value[7]) 
     page.find(:xpath, '/html/body/div[3]/div/div/div/form/table[1]/tbody/tr[4]/td[2]/select').select(value[8])  
     page.find_field('16addr_zip',:type => "text").set(value[9]) 
     page.find_field('05_company',:type => "text").set(value[10]) 
     page.find_field('41ccnumber',:type => "text").set(value[12]) 
     page.find_field('24emailadr',:type => "text").set(value[13]) 
     # page.find(:xpath, '/html/body/div[3]/div/div/div/form/table[3]/tbody/tr[5]/td[1]/input').select(value[15])   
     # page.find(:xpath, '/html/body/div[3]/div/div/div/form/table[3]/tbody/tr[5]/td[2]/input').select(value[16])    
     

  end

end

When(/^all information is filled data should be modified$/) do
  
end

Then(/^the data should look like this:$/) do |table1|
 @information1=table1.raw
  @information1.each do |value1|
     page.find_field('02frstname',:type => "text").set(value1[0])  
     page.find_field('04lastname',:type => "text").set(value1[1])  
     page.find_field('20homephon_ac',:type => "text").set(value1[2])  
     page.find_field('20homephon_pr',:type => "text").set(value1[3])  
     page.find_field('20homephon_sf',:type => "text").set(value1[4])  
     page.find_field('10address1',:type => "text").set(value1[5])  
     page.find_field('10address2',:type => "text").set(value1[6])
     page.find_field('13adr_city',:type => "text").set(value1[7]) 
     page.find(:xpath, '/html/body/div[3]/div/div/div/form/table[1]/tbody/tr[4]/td[2]/select').select(value1[8])  
     page.find_field('16addr_zip',:type => "text").set(value1[9]) 
     page.find_field('05_company',:type => "text").set(value1[10]) 
     page.find_field('41ccnumber',:type => "text").set(value1[12]) 
     page.find_field('24emailadr',:type => "text").set(value1[13]) 
   end
end

Then(/^after press reset button all information should be empty$/) do
    page.find_button('Reset').click() 
    #validation that fields are empty
    expect(page.find_field('02frstname',:type => "text").value()).to be_empty
    expect(page.find_field('04lastname',:type => "text").value()).to be_empty
    expect(page.find_field('20homephon_ac',:type => "text").value()).to be_empty
    expect(page.find_field('20homephon_pr',:type => "text").value()).to be_empty
    expect(page.find_field('20homephon_sf',:type => "text").value()).to be_empty
    expect(page.find_field('10address1',:type => "text").value()).to be_empty
    expect(page.find_field('10address2',:type => "text").value()).to be_empty
    expect(page.find_field('13adr_city',:type => "text").value()).to be_empty
    expect(page.find_field('16addr_zip',:type => "text").value()).to be_empty
    expect(page.find_field('05_company',:type => "text").value()).to be_empty
    expect(page.find_field('41ccnumber',:type => "text").value()).to be_empty
    expect(page.find_field('24emailadr',:type => "text").value()).to be_empty
end