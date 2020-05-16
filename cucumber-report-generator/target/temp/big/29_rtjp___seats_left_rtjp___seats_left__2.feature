@c87b1d3f-fef1-4ade-a16a-975a3220dae7 
Feature: RTJP - Seats left
  
  @ios @BON-80 @android 
  Scenario: RTJP - Seats left
  	
    Given  I am not logged into the system
    Given  I am on the Home page
    When  I click on the "Buy Tickets" button
    And  search for journey using the following criteria:
       | From | To | Type | Out Date | Adults |
       | EUS | GLC | single | next WED | 1 |
    Then  I should see the "Out Search Results" screen
    When  I select item No.1 from the "Search Results" table
    Then  I should see the "Select Ticket" screen
    And  the "Advance" text is shown
    And  the "Seats Left" field is visible
    And  the "Seats Left" field text matches one of the following patterns:
       | ([1-8]) seats left at this price |
       | Limited seats left at this price |
