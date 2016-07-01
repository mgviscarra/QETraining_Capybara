Given(/^I open automation page$/) do
	page.driver.browser.manage.window.maximize
	visit("http://automationpractice.com/")
end

When(/^I click on "([^"]*)" menu option$/) do |menu|
	page.find('#block_top_menu').find('li', :text=>menu).click
	@option_selected = menu
end

Then(/^I should see Navigation menu with option "([^"]*)"$/) do |option|
	expect(page.find('.breadcrumb').text).to include option
end

Then(/^I should see the option selected displayed in:$/) do |navigation_options|
	options = navigation_options.raw
	options.each do |side|
		case side.first
			when "Category title"
				screen = page.find('h2')
			when "Main screen"
				screen = page.find('h1').all('span').first
		end
		expect(screen.text).to eq @option_selected
	end
end

When(/^I write "([^"]*)" in "([^"]*)" text box$/) do |value,search_box|
	page.find(:xpath,'//input[@name=\''+search_box+'\']').set(value)
end

When(/^I click on: "([^"]*)" button$/) do |button|
	page.find(:xpath,'.//button/span[text()=\''+button+'\']', :visible => :all).click
end