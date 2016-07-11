Feature: Registration
Background: Open application and select registration option

Given I open the testing page
When I select "Registration" option
Then I should see "Registration" title displayed

Scenario: UI validation

When I click on "Submit" button
Then I should see "7" validations messages with "* This field is required"

Given I fill the Passenger Information fields in New Request screen
	|First Name|Mauricio|

	
When I click on "Submit" button
Then I should see "6" validations messages with "* This field is required"

Given I fill the Passenger Information fields in New Request screen
	|First Name|Mauricio|
	|Last Name|Viscarra|
	
When I click on "Submit" button
Then I should see "5" validations messages with "* This field is required"

Given I fill the Passenger Information fields in New Request screen
	|First Name|Mauricio|
	|Last Name|Viscarra|
	|Phone Number|5917035621454|
	
When I click on "Submit" button
Then I should see "4" validations messages with "* This field is required"

Given I fill the Passenger Information fields in New Request screen
	|First Name|Mauricio|
	|Last Name|Viscarra|
	|Phone Number|5917035621454|
	|Username|usertest123|
	
When I click on "Submit" button
Then I should see "3" validations messages with "* This field is required"

Given I fill the Passenger Information fields in New Request screen
	|First Name|Mauricio|
	|Last Name|Viscarra|
	|Phone Number|5917035621454|
	|Username|usertest123|
	|E-mail|usertest123@gmail.com|
	
When I click on "Submit" button
Then I should see "2" validations messages with "* This field is required"

Given I fill the Passenger Information fields in New Request screen
	|First Name|Mauricio|
	|Last Name|Viscarra|
	|Phone Number|5917035621454|
	|Username|usertest123|
	|E-mail|usertest123@gmail.com|
	|Password|Pas!@3456|
When I click on "Submit" button
Then I should see "1" validations messages with "* This field is required"

Scenario: Register User

Given I fill the Passenger Information fields in New Request screen
	|First Name|Mauricio|
	|Last Name|Viscarra|
	|Phone Number|5917035621454|
	|Username|usertest1234|
	|E-mail|usertest1234@gmail.com|
	|Password|Pas!@3456|
	|Confirm Password|Pas!@3456|
	And I select the Passenger Information radio buttons in New Request screen
		|Single|
	And I select the Passenger Information checkboxes in New Request screen
		|Dance|
Given I select the Passenger Information dropdowns in New Request screen
	|Country|Argentina|
	|Date of Birth|1-5-2013|
When I click on "Submit" button
Then I should see a message that says "Thank you for your registration"
	And I verify the Passenger Information fields value in New Request screen
		|First Name|Mauricio|
		|Last Name|Viscarra|
		|Phone Number|5917035621454|
		|Username|usertest1234|
		|E-mail|usertest1234@gmail.com|

Scenario: Registering a existent user
Given I fill the Passenger Information fields in New Request screen
	|First Name|Mauricio|
	|Last Name|Viscarra|
	|Phone Number|5917035621454|
	|Username|usertest1234|
	|E-mail|usertest1234@gmail.com|
	|Password|Pas!@3456|
	|Confirm Password|Pas!@3456|
When I click on "Submit" button
Then I should see a error message that says ": Username already exists"
	
	

	

	
