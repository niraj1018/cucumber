@3c0831d4-53a0-4462-80f2-2c440d9ef963 
Feature: Journey Search
  
  @search @system @positive @android @ios 
  Scenario: Earlier trains button shows Not available to buy tickets
  	
    Given  I am not logged into the system
    And  I am on the Buy ticket screen
    When  I search for journey using the following criteria:
       | From | To | Via | Type | Out Date |
       | ZFD | NCL | YRK | Single | today |
    And  accept the alert message
    Then  I should see the "Out Search Results" screen
    And  the "Search Results" list is not empty
    And  the "York" text is shown
    And  the "Farringdon" text is shown
    When  I click on the "Earlier Trains" button
    Then  I should see the "Out Search Results" screen
    And  the "Search Results" list is not empty
    And  the "Newcastle" text is shown
    And  the "Farringdon" text is shown
    And  the "Not available" text is shown
