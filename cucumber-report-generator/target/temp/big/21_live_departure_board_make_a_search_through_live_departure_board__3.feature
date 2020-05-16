@d8a6b2de-8800-495f-880e-eb4adc309f7e 
Feature: Live Departure Board
  As a user I want to check all possible live train information
  @android_device @ios @ldb @positive @android 
  Scenario: Make a search through Live Departure Board
  	
    Given  I am not logged into the system
    And  I am on the Live Train Times screen
    When  I search for live time trains with the following criteria:
       | Departure/Arrival | From/At | To/From |
       | Arrivals | EUS |  |
    Then  I should see the "Live Train Times Search Results" screen
    And  the "Arrivals" label is shown
    And  the "Search Results" list is not empty
    When  I select item No.3 from the "Search Results" table
    Then  I should see the "Live Progress" screen
    And  all "Platform Column" list items contain the "Platform" text
