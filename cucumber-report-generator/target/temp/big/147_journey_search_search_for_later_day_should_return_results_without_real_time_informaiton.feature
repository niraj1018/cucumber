@3c0831d4-53a0-4462-80f2-2c440d9ef963 
Feature: Journey Search
  
  @search @system @android @ios 
  Scenario: Search for later day should return results without real-time informaiton
  	
    Given  I am not logged into the system
    And  I am on the Buy ticket screen
    When  I search for journey using the following criteria:
       | From | To | Via | Type | Out Date |
       | ZFD | NCL | YRK | Single | +5 days |
    Then  I should see the "Out Search Results" screen
    And  none of the following labels are shown:
       | Plat |
       | Exp |
       | On time |
       | Delayed |
