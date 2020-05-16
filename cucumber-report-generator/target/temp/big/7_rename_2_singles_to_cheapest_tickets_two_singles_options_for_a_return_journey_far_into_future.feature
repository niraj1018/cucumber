@01b6c990-9716-4270-9d40-3414724690c0 
Feature: Rename 2 singles to cheapest tickets
  Rename the two singles option "Cheapest tickets"
Show only two singles when its the cheapest option.
  @android @ios 
  Scenario: Two singles options for a return journey far into future
  	 Acceptance criteria 1
 I have searched for a journey from London to Manchester far into the future 
 I pick an outbound and a return journey (journey should be less than ?80) 
 I see the two singles option at the top of the screen
    Given  I am not logged into the system
    And  I am on the Home page
    When  I click on the "Buy Tickets" button
    And  search for journey using the following criteria:
       | From | To | Type | Out Date | Return Date |
       | London | Manchester | Return | +3 days | +10 days |
    Then  I should see the "Out Search Results" screen
    When  I select item No.1 from the "Search Results" table
    Then  I should see the "Return Search Results" screen
    When  I select item No.1 from the "Search Results" table
    Then  I should see the "Select Ticket" screen
    And  the "Cheapest Tickets" label is shown
    And  the "Advance Single" text is shown
