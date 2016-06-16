Feature:Practice one
	Background:
		Given the page to test
		
		@tc1
		Scenario:Find elements and do an action
		Given select the checkbox "I have a car"
		Then review that action was completed as $true
		
		@tc2
		Scenario:Find elements and do an action
		Given select the radio button "Female"
				
		@tc3
		Scenario:Find elements and do an action
		Given click on get confirmation button 
		Then click on cancel button
		
		@tc4
		Scenario:Find elements and do an action
		Given click on show me alert button 
		Then click on accept button