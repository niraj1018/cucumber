@3c0831d4-53a0-4462-80f2-2c440d9ef963 
Feature: Journey Search
  
  @search @system @negative @android 
  Scenario: Negative Search for Android
  	
    Given  I am not logged into the system
    And  I am on the Buy ticket screen
    When  I search for journey using the following criteria:
       | From | To | Via | Type | Out Date | Return Date | Adults | Children |
       | ZFD | YRK |  | return | today | today | 1 | 1 |
    Then  I should see the "The return journey start date must be after the outbound journey start date" message is shown
