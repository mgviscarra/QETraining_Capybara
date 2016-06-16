# coding: utf-8

###### WHEN #############

When (/^I open a google web page$/) do 

  #visit 'http://google.com' 
  visit('/')
  page.driver.browser.manage.window.maximize
end

When (/^I insert "(.*?)" in the search box$/) do |search_txt| 

  page.fill_in 'lst-ib', :with => search_txt
 
end

When (/^I click on Search button$/) do 

  page.click_button('Buscar')
 
end

###### THEN #############

Then (/^I should see the number of results found$/) do 

  page.find('#resultStats')
 
end




