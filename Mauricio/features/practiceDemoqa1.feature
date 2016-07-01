Feature: Main Page Options
Background: Click on differents menues of the main page

Given I open the testing page

Scenario: UI menues validation

When I select "About us" tab
Then I should see "About us" title displayed

When I select "Services" tab
Then I should see "Services" title displayed

When I select "Demo-Draggable" tab
Then I should see "Draggable" title displayed

When I select "Demo-Tabs" tab
Then I should see "Tabs" title displayed


When I select "Contact" tab
Then I should see "Contact" title displayed

When I select "Home" tab
Then I should see "Home" title displayed

