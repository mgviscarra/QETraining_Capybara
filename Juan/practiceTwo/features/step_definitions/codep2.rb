#Background
Given(/^the page to test$/) do
  visit 'http://only-testing-blog.blogspot.in/2013/09/test.html'

end
# Test cases
Given(/^the data:$/) do |table|
  # table is a Cucumber::MultilineArgument::DataTable
  @information=table.raw
  @information.each do |value|
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

end

When(/^all information is filled data should be modified$/) do
  
end

Then(/^the data should look like this:$/) do |table|
  # table is a Cucumber::MultilineArgument::DataTable
  pending # Write code here that turns the phrase above into concrete actions
end

Then(/^after press reset button all information should be empty$/) do
  pending # Write code here that turns the phrase above into concrete actions
end