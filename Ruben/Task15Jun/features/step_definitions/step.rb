Given(/^I have opened a browser$/) do
   visit('')
   page.check('vehicle', :option => 'Car')
   page.choose('gender', :option => 'female')
   click_on('Get Confirmation')
   page.driver.browser.switch_to.alert.accept
   click_on('Show Me Alert')
   page.driver.browser.switch_to.alert.accept
end