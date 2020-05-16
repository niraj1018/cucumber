@3c0831d4-53a0-4462-80f2-2c440d9ef963 
Feature: Journey Search
  
  @android @ios 
  Scenario: Search for trains arriving today/now does not have available tickets
  	
    Given  I am not logged into the system
    And  I am on the Buy ticket screen
    When  I search for journey using the following criteria:
       | From | To | Via | Type | Out Date | Out Arrive/Leave |
       | ZFD | NCL | YRK | Single | today | arrive |
    And  accept the alert message
    Then  I should see the "Out Search Results" screen
    And  the "Search Results" list is not empty
    And  the "Not available" text is shown
