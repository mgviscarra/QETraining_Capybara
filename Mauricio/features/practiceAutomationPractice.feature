Feature: Automation practice
Background: Open automation screen

Given I open automation page

Scenario: Navigation menu Dresses

When I click on "DRESSES" menu option
Then I should see Navigation menu with option "Dresses"
And I should see the option selected displayed in:
		|Category title|
		|Main screen|
		
When I click on "WOMEN" menu option
Then I should see Navigation menu with option "Women"
And I should see the option selected displayed in:
		|Category title|
		|Main screen|

When I click on "T-SHIRTS" menu option
Then I should see Navigation menu with option "T-shirts"
And I should see the option selected displayed in:
		|Main screen|


