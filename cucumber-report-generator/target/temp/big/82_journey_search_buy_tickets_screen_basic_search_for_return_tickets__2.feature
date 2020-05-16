@3c0831d4-53a0-4462-80f2-2c440d9ef963 
Feature: Journey Search
  
  @search @ios @system @positive @android 
  Scenario: Buy Tickets screen Basic Search for Return tickets
  	
    Given  I am not logged into the system
    And  I am on the Buy ticket screen
    When  I search for journey using the following criteria:
       | From | To | Via | Type | Out Date | Out Arrive/Leave | Return Date | Return Arrive/Leave | Adults | Children |
       | Farringdon | London Euston |  | return | +3 hours | leave | +8 hours | arrive | 1 | 1 |
    And  accept the alert message
    Then  I should see the "Out Search Results" screen
    And  the "Search Results" list is not empty
    And  the "Farringdon" label is shown
    And  the "London Euston" label is shown
    When  I select item No.1 from the "Search Results" table
    Then  I should see the "Return Search Results" screen
    And  the "Search Results" list is not empty
    And  the "Farringdon" label is shown
    And  the "London Euston" label is shown
