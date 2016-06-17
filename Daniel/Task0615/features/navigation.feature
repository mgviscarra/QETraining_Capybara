Feature: Fill Form
In order test fill forms
As I am learning how to do this
I want to open a browser of "roboform" page and fill its form.

	Scenario: Fill Billing Address and Payment & Shipping Information form 
		Given I open the borwser "http://www.roboform.com/filling-test-shopping-cart"
			And I fill following data:
			| Daniel| Jauregui | 70700001 | Wiracocha | Cochabamba | NY | 0000  | arawi | Jalasoft | 44133465 | 123 | 44133465 |
			And I fill folloqing Payment & Shipping Information:
			| 1 | 2 | VISA | 22222222222222 | 7 | 2016  | daniel.jauregui@outlook.com | 3 | Password | Password | Password | 1 |
		When I will click in "Reset" button
		Then The all field will be in initial state
