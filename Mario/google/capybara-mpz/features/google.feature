@google @qa

Feature: Search in google
  In order to start a new search in google
  As a user
  I should be available to open a browser, insert the criteria and see the results.

  Scenario: New search in google.

    When I open a google web page
    And I insert "Automation testing with Capybara" in the search box
    And I click on Search button

    Then I should see the number of results found


