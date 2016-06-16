Given(/^I open the borwser chrome$/) do
  visit('http://only-testing-blog.blogspot.in/2013/09/test.html')
end

When(/^I select I have a "([^"]*)"$/) do |vehicle|
  page.check('vehicle',:option => vehicle)
end

When(/^select "([^"]*)"$/) do |gender|
	page.choose('gender',:option => gender)
end

Then(/^click on "([^"]*)" button$/) do |button|
	page.click_on(button)
end

Then(/^click on "([Cancel|Dismiss]+)" button from alert popup$/) do |button|
	wait = Selenium::WebDriver::Wait.new ignore: Selenium::WebDriver::Error::NoAlertPresentError
	alert = wait.until { page.driver.browser.switch_to.alert }
	alert.dismiss
end

Then(/^click on "([Accept|OK]+)" button from alert popup$/) do |button|
	wait = Selenium::WebDriver::Wait.new ignore: Selenium::WebDriver::Error::NoAlertPresentError
	alert = wait.until { page.driver.browser.switch_to.alert }
	alert.accept
end
