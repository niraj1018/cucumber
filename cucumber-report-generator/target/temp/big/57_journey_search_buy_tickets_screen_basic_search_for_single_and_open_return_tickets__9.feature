@3c0831d4-53a0-4462-80f2-2c440d9ef963 
Feature: Journey Search
  
  @search @ios @system @positive @android 
  Scenario: Buy Tickets screen Basic Search for Single and Open return tickets
  	
    Given  I am not logged into the system
    And  I am on the Buy ticket screen
    When  I search for journey using the following criteria:
       | From | To | Via | Type | Out Date | Out Arrive/Leave | Return Date | Adults | Children |
       | ZFD | Newcastle | YRK | open return | tomorrow | leave |  | 1 | 1 |
    And  accept the alert message
    Then  I should see the "Out Search Results" screen
    And  the "Search Results" list is not empty
    And  the "Farringdon" label is shown
    And  the "Newcastle" label is shown
