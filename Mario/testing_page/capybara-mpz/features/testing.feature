@test @qa

Feature: Search in google
  In order to search information
  As a user
  I should be available to open a browser, .

  
  Scenario: New search in google.

    When I open a testing web page
    And I insert "Mario" in first name
    And I select "Bike" option
    And I choose "male" option
    And I click on "Get Confirmation" button
    And I click on cancel button from alert dialog 
    Then I should see "You pressed Cancel!" in the screen
    When I click on "Show Me Alert" button
    And I click on accept button from alert dialog
    Then I should see "You pressed Cancel!" in the screen
    



