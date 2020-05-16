@3c0831d4-53a0-4462-80f2-2c440d9ef963 
Feature: Journey Search
  
  @search @system @positive @android @ios 
  Scenario: Search for current day should return results with real-time informaiton
  	
    Given  I am not logged into the system
    And  I am on the Buy ticket screen
    When  I search for journey using the following criteria:
       | From | To | Via | Type | Out Date |
       | ZFD | NCL | YRK | Single | today |
    And  accept the alert message
    Then  I should see the "Out Search Results" screen
    And  the "Plat" text is shown
    And  all "Search Results" list items contain one of the following labels:
       | Exp |
       | On time |
       | Delayed |
