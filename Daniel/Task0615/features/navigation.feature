Feature: Fill Form
In order test fill forms
As I learning how to
I want to open a browser of roboform and fill the form.

	Scenario: Fill Billing Address form 
		Given I open the borwser "http://www.roboform.com/filling-test-shopping-cart"
			And I fill following data:
		| Daniel| Jauregui | 70700001 | Wiracocha | Cochabamba | NY | 0000  |
		When I will click in "Reset" button
		Then The all field will be in initial state
