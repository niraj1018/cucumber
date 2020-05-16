@d8a6b2de-8800-495f-880e-eb4adc309f7e 
Feature: Live Departure Board
  As a user I want to check all possible live train information
  @ldb @negative @android @ios 
  Scenario: No direct route
  	
    Given  I am not logged into the system
    And  I am on the Live Train Times screen
    When  I search for live time trains with the following criteria:
       | Departure/Arrival | From/At | To/From |
       | Departure | Farringdon | EUS |
    Then  I should see the "Alert" screen
    And  the "No live times for this route" message is shown
    When  I click on the "OK" button
    And  accept the alert message
    Then  I should see the "Out Search Results" screen
