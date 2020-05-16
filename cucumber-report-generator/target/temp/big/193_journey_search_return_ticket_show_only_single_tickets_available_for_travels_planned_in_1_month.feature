@3c0831d4-53a0-4462-80f2-2c440d9ef963 
Feature: Journey Search
  
  @search @system @positive @android @ios 
  Scenario: Return ticket show only single tickets available for travels planned in 1 month
  	
    Given  I am not logged into the system
    And  I am on the Buy ticket screen
    When  I search for journey using the following criteria:
       | From | To | Via | Type | Out Date | Return Date |
       | ZFD | NCL | YRK | Return | +2 days | +40 days |
    Then  I should see the "Out Search Results" screen
    And  the "Search Results" list is not empty
    When  I select item No.1 from the "Search Results" table
    Then  I should see the "Return Search Results" screen
    And  the "Search Results" list is not empty
    When  I select item No.1 from the "Search Results" table
    Then  I should see the "Select Ticket" screen
    And  the "Tickets" list contains only 1 item
    And  all "Tickets" list items contain the "Single" text
