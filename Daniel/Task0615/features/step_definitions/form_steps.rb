Given(/^I open the borwser "([^"]*)"$/) do |page|
	visit(page)
end

Given(/^I fill following data:$/) do |input|
	@form_data = input.raw
	@form_data.each do |item|
		#page.find(:fillable_field, '02frstname').set(item[0])
		page.find_field('02frstname',:type => "text").set(item[0])
	end
end

When(/^I will click in "([^"]*)" button$/) do |arg1|
  pending # Write code here that turns the phrase above into concrete actions
end

Then(/^The all field will be in initial state$/) do
  pending # Write code here that turns the phrase above into concrete actions
end


# 02frstname -- name

