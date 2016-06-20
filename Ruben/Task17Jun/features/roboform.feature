Feature: RoboForm fill form
Scenario: Fill form
Given I visit Roboform and fill form
When click reset button
Then all fields should be empty


