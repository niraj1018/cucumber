@d8a6b2de-8800-495f-880e-eb4adc309f7e 
Feature: Live Departure Board
  As a user I want to check all possible live train information
  @ldb @positive @android 
  Scenario: Recent searches LDB list
  	
    Given  I am not logged into the system
    And  I am on the Live Train Times screen
    When  I search for live time trains with the following criteria:
       | Departure/Arrival | From/At | To/From |
       | Arrivals | Farringdon | City Thameslink |
    Then  I should see the "Alert" screen
    And  the "no booking fee on the day of travel" message is shown
    When  I go to the Home page
    Then  I should see the "Farringdon" text is shown
