# coding: utf-8

###### WHEN #############

When (/^I open a testing web page$/) do 

  visit 'http://only-testing-blog.blogspot.in/2013/09/test.html' 
  #visit('/')
end

When (/^I insert "(.*?)" in first name$/) do |first_name| 

  page.fill_in 'fname', :with => first_name
 
end

When (/^I select "(.*?)" option$/) do |vehicle|  

  #page.check('Bike')
  page.find(:xpath, "//input[@value='#{vehicle}']").click
 
end

When (/^I choose "(.*?)" option$/) do |gender|  

  page.find(:xpath, "//input[@value='#{gender}']").click
 
end

When (/^I click on "(.*?)" button$/) do |button_txt| 

  page.click_button(button_txt)
end

When (/^I click on cancel button from alert dialog$/) do 

  page.driver.browser.switch_to.alert.dismiss
end

When (/^I click on accept button from alert dialog$/) do 

  page.driver.browser.switch_to.alert.accept
end



 
    


###### THEN #############

Then (/^I should see "(.*?)" in the screen$/) do |text| 

  page.find('#demo', :text => text)
 
end




