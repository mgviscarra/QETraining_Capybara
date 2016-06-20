#Background
Given(/^the page to test$/) do
  visit 'http://only-testing-blog.blogspot.in/2013/09/test.html'

end

#TestCases
Given(/^select the checkbox "([^"]*)"$/) do |name|
  puts name 
  page.check('vehicle',:option => 'Car')

end

Then(/^review that action was completed as \$true$/) do

 page.has_checked_field? '#Car'
  
end

Given(/^select the radio button "([^"]*)"$/) do |radioButtonName|
  puts radioButtonName
  page.choose('gender',:option => 'female')
end

Given(/^click on get confirmation button$/) do
  
  click_on('Get Confirmation')

end

Then(/^click on cancel button$/) do

  page.driver.switch_to.alert.dismiss rescue Selenium::WebDriver::Error::NoAlertOpenError
end

Given(/^click on show me alert button$/) do
  page.find(:xpath, '//*[@id="post-body-6522850981930750493"]/div[1]/input').set(true)
end

Then(/^click on accept button$/) do
  page.driver.switch_to.alert.accept rescue Selenium::WebDriver::Error::NoAlertOpenError
end