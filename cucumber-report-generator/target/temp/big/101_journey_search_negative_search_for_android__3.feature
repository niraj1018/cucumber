@3c0831d4-53a0-4462-80f2-2c440d9ef963 
Feature: Journey Search
  
  @search @system @negative @android 
  Scenario: Negative Search for Android
  	
    Given  I am not logged into the system
    And  I am on the Buy ticket screen
    When  I search for journey using the following criteria:
       | From | To | Via | Type | Out Date | Return Date | Adults | Children |
       | ZFD |  |  | single | today |  | 1 | 1 |
    Then  I should see the "You must choose a destination station" message is shown
