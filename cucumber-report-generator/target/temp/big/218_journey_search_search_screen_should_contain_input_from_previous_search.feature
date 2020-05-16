@3c0831d4-53a0-4462-80f2-2c440d9ef963 
Feature: Journey Search
  
  @BON-90 @BON-92 @ios @android 
  Scenario: Search screen should contain input from previous search
  	
    Given  I am not logged into the system
    And  I am on the Home page
    When  I click on the "Buy Tickets" button
    And  search for journey using the following criteria:
       | From | To | Via | Type | Out Date | Return Date |
       | ZFD | NCL | YRK | Return | tomorrow | +2 days |
    Then  I should see the "Out Search Results" screen
    And  the "Select outbound" label is shown
    When  I select item No.1 from the "Search Results" table
    Then  I should see the "Return Search Results" screen
    And  the "Select return" label is shown
    When  I go to the Home page
    And  click on the "Buy Tickets" button
    Then  I should see the "Journey Search" screen
    And  the "Origin station" field contains "Farringdon" text
    And  the "Destination station" field contains "Newcastle" text
